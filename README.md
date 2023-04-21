# ForcedUpgrade

Design a simple and single-function module to detect the mandatory update data set by the backend. Determine whether the current version needs a mandatory update. If necessary, display a page with a button that can only be clicked to upgrade. The detection will be triggered when the application becomes the current application.

## Requirements
1. iOS 13
2. Swift5

## Installation

Swift Package Manager
Add https://github.com/Smart-XiaoLeiGe/ForcedUpgrade.git as the URL of the library. Upgrade will also be imported.

## How to Use
```
if let alert = ForcedUpgrade().alertView {
    //显示页面
}

```