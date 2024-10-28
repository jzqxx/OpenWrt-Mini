# 此脚本用处是：添加第三方插件
#=======================================================================================================================


# 1-添加 ShadowSocksR Plus+ 插件
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#临时使用 SSR+ 自用修改源
# git clone https://github.com/JohnstonIrene/helloworld.git;master package/helloworld
# echo "src-git helloworld https://github.com/fw876/helloworld.git;master" >> "feeds.conf.default"
echo "src-git helloworld https://github.com/JohnstonIrene/helloworld.git;master" >> "feeds.conf.default"


# 2-添加 PowerOff 关机插件
git clone https://github.com/WukongMaster/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加 opentomcat 主题
git clone https://github.com/WukongMaster/luci-theme-opentomcat.git package/luci-theme-opentomcat

# 4-添加OpenClash插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 5-添加PassWall插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
