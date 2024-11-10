import requests
import os

# GitHub仓库所有者和仓库名，需根据实际情况修改
owner = "wwz09"
repo = "TVBoxOSC"

# 从环境变量中获取GitHub令牌，在工作流中会通过${{ secrets.GITHUB_TOKEN }}设置
token = os.environ.get("GITHUB_TOKEN")

headers = {
    "Authorization": f"token {token}",
    "Accept": "application/vnd.github.v3+json"
}


def get_caches():
    """
    获取仓库的缓存信息

    Returns:
        list: 包含缓存信息的字典列表，如果获取失败则返回空列表
    """
    url = f"https://api.github.com/repos/{owner}/{repo}/actions/caches"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        return response.json().get("caches", [])
    else:
        print("无法获取缓存信息")
        return []


def delete_cache(cache_id):
    """
    根据缓存ID删除指定缓存

    Args:
        cache_id (str): 要删除的缓存的ID

    Returns:
        None
    """
    url = f"https://api.github.com/repos/{owner}/{repo}/actions/caches/{cache_id}"
    response = requests.delete(url, headers=headers)
    if response.status_code == 204:
        print(f"成功删除缓存 {cache_id}")
    else:
        print(f"无法删除缓存 {cache_id}")


def clean_caches():
    """
    清理缓存的主要函数，根据设定的规则判断并删除缓存
    """
    caches = get_caches()
    # 这里假设清理大于1GB（1024 * 1024 * 1024字节）的缓存，可根据实际需求修改规则
    for cache in caches:
        if cache.get("size_in_bytes", 0) > 1024 * 1024 * 1024:
            delete_cache(cache["id"])


if __name__ == "__main__":
    clean_caches()
