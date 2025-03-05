#!/bin/sh
# Powered by Apad.pro
# https://apad.pro/easymosdns
#
mosdns_working_dir="/etc/mosdns"
mkdir -p /tmp/easymosdns \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/akamai_domain_list.txt > /tmp/easymosdns/akamai_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/block_list.txt > /tmp/easymosdns/block_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/cachefly_ipv4.txt > /tmp/easymosdns/cachefly_ipv4.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/cdn77_ipv4.txt > /tmp/easymosdns/cdn77_ipv4.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/china_domain_list_mini.txt > /tmp/easymosdns/china_domain_list_mini.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/cloudfront.txt > /tmp/easymosdns/cloudfront.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/cloudfront_ipv6.txt > /tmp/easymosdns/cloudfront_ipv6.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/custom_list.txt > /tmp/easymosdns/custom_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/gfw_ip_list.txt > /tmp/easymosdns/gfw_ip_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/grey_list.txt > /tmp/easymosdns/grey_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/hosts_akamai.txt > /tmp/easymosdns/hosts_akamai.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/hosts_fastly.txt > /tmp/easymosdns/hosts_fastly.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/jp_dns_list.txt > /tmp/easymosdns/jp_dns_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/original_domain_list.txt > /tmp/easymosdns/original_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/ipv6_domain_list.txt > /tmp/easymosdns/ipv6_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/private.txt > /tmp/easymosdns/private.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/redirect.txt > /tmp/easymosdns/redirect.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/sucuri_ipv4.txt > /tmp/easymosdns/sucuri_ipv4.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/us_dns_list.txt > /tmp/easymosdns/us_dns_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Journalist-HK/Rules/c3b0391b9c6cff72171146b8be259c30866b8989/white_list.txt > /tmp/easymosdns/white_list.txt
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/geoip/release/text/facebook.txt > /tmp/easymosdns/facebook.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/geoip/release/text/fastly.txt > /tmp/easymosdns/fastly.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/geoip/release/text/telegram.txt > /tmp/easymosdns/telegram.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/geoip/release/text/twitter.txt > /tmp/easymosdns/twitter.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt > /tmp/easymosdns/gfw.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/greatfire.txt > /tmp/easymosdns/greatfire.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/pmkol/easymosdns/rules/ad_domain_list.txt > /tmp/easymosdns/ad_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/pmkol/easymosdns/rules/cdn_domain_list.txt > /tmp/easymosdns/cdn_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_domain_list.txt > /tmp/easymosdns/china_domain_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_ip_list.txt > /tmp/easymosdns/china_ip_list.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/XIU2/CloudflareSpeedTest/master/ip.txt > /tmp/easymosdns/ip.txt \
&& curl https://ghproxy.cc/https://raw.githubusercontent.com/XIU2/CloudflareSpeedTest/master/ipv6.txt > /tmp/easymosdns/ipv6.txt \
&& cp -rf /tmp/easymosdns/*.txt $mosdns_working_dir/rule \
&& rm -rf /tmp/easymosdns/* \
&& echo 'update successful'
