import requests
import os

# GitHub仓库所有者和仓库名，需根据实际情况修改
owner = "wwz09"
repo = "TVBoxOSC"
token = os.environ.get("GIT_TOKEN")

headers = {
    "Authorization": f"token {token}",
    "Accept": "application/vnd.github.v3+json"
}

def get_caches():
    """
    获取指定仓库的所有缓存信息
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
    删除指定 ID 的缓存
    Args:
        cache_id (str): 缓存的 ID
    """
    url = f"https://api.github.com/repos/{owner}/{repo}/actions/caches/{cache_id}"
    response = requests.delete(url, headers=headers)
    if response.status_code == 204:
        print(f"成功删除缓存 {cache_id}")
    else:
        print(f"无法删除缓存 {cache_id}")

# 获取缓存列表并打印
caches = get_caches()
for cache in caches:
    print(cache)

# 示例：删除所有缓存
for cache in caches:
    delete_cache(cache["id"])
