@echo off
chcp 65001 >nul
title GitHub一键提交工具
echo ========================================
echo          GitHub 一键提交工具
echo ========================================
echo.
echo 正在切换到项目目录...
cd /d "%~dp0"

echo 正在添加所有文件到暂存区...
git add .
if %errorlevel% neq 0 (
    echo ❌ git add 失败，请检查Git环境！
    pause
    exit /b 1
)

echo 正在提交到本地仓库...
set /p commit_msg=请输入本次提交说明（直接回车默认"提交案例作业源代码"）：
if "%commit_msg%"=="" set commit_msg=提交案例作业源代码
git commit -m "%commit_msg%"
if %errorlevel% neq 0 (
    echo ⚠️  没有可提交的文件，或提交失败！
    pause
    exit /b 1
)

echo 正在推送到GitHub远程仓库...
git push
if %errorlevel% neq 0 (
    echo ❌ git push 失败，请检查网络或仓库权限！
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ 提交成功！代码已同步到GitHub仓库
echo ========================================
timeout /t 2 /nobreak >nul
exit