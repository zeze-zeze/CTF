(function($) {
    $.su = $.su || {};
    $.su.CHAR = $.su.CHAR || {};
    $.su.CHAR.HELP = {
        STATUS_INTERNET: {
            TITLE: "網際網路",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於廣域網路(WAN = Internet[網際網路])的相關資訊。"
            }, {
                type: "title",
                title: "IPv4"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器網際網路(WAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被分配到路由器網際網路(WAN)連接埠的IP位址。如果 IP 位址顯示為0.0.0.0，則代表尚未連線到網際網路。"
            }, {
                type: "name",
                title: "子網路遮罩",
                content: "這個參數決定了IP位址的網路部分與主機部分。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "此IP 位址被用於連接路由器到網路，若無數值則無法正常連線到網際網路。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "DNS會協助電腦將英文網址、網域轉譯為IP位址，使電腦可以正常連線。本資訊之DNS伺服器為ISP所提供。"
            }, {
                type: "name",
                title: "連線類型",
                content: "目前的網際網路(WAN)埠的連線類型。"
            }, {
                type: "title",
                title: "IPv6"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器網際網路(WAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被分配到路由器網際網路(WAN)連接埠的IPv6 位址。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "此IP 位址被用於連接路由器到網路，若無數值則無法正常連線到網際網路。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "DNS會協助電腦將英文網址、網域轉譯為IP位址，使電腦可以正常連線。本資訊之DNS伺服器為ISP所提供。"
            }, {
                type: "name",
                title: "連線類型",
                content: "目前的網際網路(WAN)埠的連線類型。"
            }, {
                type: "title",
                title: "3G/4G"
            }, {
                type: "name",
                title: "3G/4G 數據機狀態",
                content: "顯示 3G/4G 數據機的目前狀態。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "顯示目前的 3G/4G (網路) IP 位址。這個欄位將空白，如果未偵測到 3G/4G 網路，將會顯示 0.0.0.0。"
            }, {
                type: "name",
                title: "子網路遮罩",
                content: "顯示與 3G/ 4G IP 位址關聯的子網路遮罩。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "顯示預設閘道 (您的路由器) 的 IP 位址。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "顯示由 ISP 指派的 DNS 伺服器 IP 位址。"
            }, {
                type: "name",
                title: "3G/4G 數據機訊號",
                content: "顯示目前的 3G /4G 無線訊號強度。"
            }]
        },
        STATUS_INTERNET_NO_USB: {
            TITLE: "網際網路",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於廣域網路(WAN = Internet[網際網路])的相關資訊。"
            }, {
                type: "title",
                title: "IPv4"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器網際網路(WAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被分配到路由器網際網路(WAN)連接埠的IP位址。如果 IP 位址顯示為0.0.0.0，則代表尚未連線到網際網路。"
            }, {
                type: "name",
                title: "子網路遮罩",
                content: "這個參數決定了IP位址的網路部分與主機部分。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "此IP 位址被用於連接路由器到網路，若無數值則無法正常連線到網際網路。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "DNS會協助電腦將英文網址、網域轉譯為IP位址，使電腦可以正常連線。本資訊之DNS伺服器為ISP所提供。"
            }, {
                type: "name",
                title: "連線類型",
                content: "目前的網際網路(WAN)埠的連線類型。"
            }, {
                type: "title",
                title: "IPv6"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器網際網路(WAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被分配到路由器網際網路(WAN)連接埠的IPv6 位址。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "此IP 位址被用於連接路由器到網路，若無數值則無法正常連線到網際網路。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "DNS會協助電腦將英文網址、網域轉譯為IP位址，使電腦可以正常連線。本資訊之DNS伺服器為ISP所提供。"
            }, {
                type: "name",
                title: "連線類型",
                content: "目前的網際網路(WAN)埠的連線類型。"
            }]
        },
        STATUS_WIRELESS: {
            TITLE: "無線網路",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於無線網路的相關資訊。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "無線網路名稱，通常也叫做SSID。"
            }, {
                type: "name",
                title: "無線網路功能",
                content: "目前無線網路的狀態(開啟 或 關閉)。"
            }, {
                type: "name",
                title: "模式",
                content: "目前的無線網路模式。"
            }, {
                type: "name",
                title: "頻道寬度",
                content: "無線網路的頻道寬度。"
            }, {
                type: "name",
                title: "頻道",
                content: "目前的無線網路頻道與對應頻率(GHz)。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器的無線網路所具有的實體位址。"
            }, {
                type: "name",
                title: "WDS 狀態",
                content: "WDS模式目前的狀態 (啟用 或 停用)。"
            }]
        },
        STATUS_LAN: {
            TITLE: "區域網路(LAN)",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於區域網路(LAN)的相關資訊。"
            }, {
                type: "title",
                title: "IPv4"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器區域網路(LAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被指派給路由器在LAN上的IPv4位址。"
            }, {
                type: "name",
                title: "子網路遮罩",
                content: "這個參數決定了IP位址的網路部分與主機部分。"
            }, {
                type: "name",
                title: "DHCP",
                content: "顯示路由器內建的DHCP伺服器是否已啟動。"
            }, {
                type: "title",
                title: "IPv6"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器區域網路(LAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "被指派給路由器在LAN上的IPv6位址。"
            }, {
                type: "name",
                title: "本地連線位址",
                content: "LAN介面的 IPv6 連線位址。"
            }, {
                type: "name",
                title: "分配類型",
                content: "LAN介面的IPv6 位址類型。"
            }]
        },
        STATUS_GUEST: {
            TITLE: "訪客網路",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於無線訪客網路的相關資訊。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "訪客網路的無線網路名稱。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "顯示目前訪客網路的無線網路名稱(SSID)是否被隱藏。"
            }, {
                type: "name",
                title: "無線網路功能",
                content: "目前訪客網路的狀態(開啟 或 關閉)。"
            }, {
                type: "name",
                title: "允許訪客可以互相連線",
                content: "顯示訪客網路上所有的無線設備是否被允許互相溝通。"
            }]
        },
        STATUS_USB: {
            TITLE: "USB 設備",
            CONTENT: [{
                type: "paragraph",
                content: "顯示有關於連接到本路由器的USB儲存設備、印表機的相關資訊。"
            }, {
                type: "name",
                title: "印表機",
                content: "已連接的印表機的名稱。"
            }, {
                type: "name",
                title: "USB磁碟",
                content: "連接到路由器的USB磁碟名稱。"
            }, {
                type: "name",
                title: "總計",
                content: "已連接的USB儲存設備的總計容量。"
            }, {
                type: "name",
                title: "可用",
                content: "已連接的USB儲存設備的剩餘可用容量。"
            }]
        },
        STATUS_PERFORMANCE: {
            TITLE: "效能",
            CONTENT: [{
                type: "paragraph",
                content: "顯示目前路由器的效能。"
            }, {
                type: "name",
                title: "CPU 負載",
                content: "CPU的使用率。"
            }, {
                type: "name",
                title: "記憶體使用率",
                content: "記憶體的使用率。"
            }]
        },
        STATUS_WIRED: {
            TITLE: "有線使用者",
            CONTENT: [{
                type: "paragraph",
                content: "顯示所有連接於此網路之有線設備的資訊。"
            }]
        },
        STATUS_WIRELESS_CLIENTS: {
            TITLE: "無線使用者",
            CONTENT: [{
                type: "paragraph",
                content: "顯示所有連接於此網路之無線設備的資訊。"
            }]
        },
        INTERNET_INTERNET: {
            TITLE: "IPv4",
            CONTENT: [{
                type: "title",
                title: "網際網路連線類型: 固定 IP"
            }, {
                type: "paragraph",
                content: "如果您的ISP提供您一組特定的IP參數，如： IP 位址, 子網路遮罩, 閘道,  DNS位址等，請選擇此類型。"
            }, {
                type: "name",
                title: "IP 位址/子網路遮罩/預設閘道/主要 DNS/次要 DNS",
                content: "請輸入ISP所提供的資訊。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "一般常見的乙太網路MTU （Maximum Transmit Unit）數值為1500。通常您不需要修改這個數值，除非您的ISP有特別需求！"
            }, {
                type: "title",
                title: "網際網路連線類型: 浮動 IP"
            }, {
                type: "paragraph",
                content: "如果您的ISP使用DHCP伺服器提供您IP位址的話，請選擇此類型。"
            }, {
                type: "name",
                title: "IP 位址/子網路遮罩/預設閘道/主要 DNS/次要 DNS",
                content: "這些參數將會由ISP自動提供。"
            }, {
                type: "name",
                title: "更新",
                content: "點選此按鈕以從 DHCP 伺服器取得新的IP參數。"
            }, {
                type: "name",
                title: "釋放",
                content: "點選此按鈕以釋放從 DHCP 伺服器取得的IP參數。"
            }, {
                type: "name",
                title: "使用下列的DNS位址",
                content: "如果ISP提供1到2個DNS位址，勾選此核取方塊並輸入主要DNS與次要DNS伺服器到對應欄位。否則，您的ISP會自動分配DNS伺服器位址給您。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "一般常見的乙太網路MTU （Maximum Transmit Unit）數值為1500。通常您不需要修改這個數值，除非您的ISP有特別需求！"
            }, {
                type: "name",
                title: "主機名稱",
                content: "輸入數值到此欄位以指定路由器的主機名稱。"
            }, {
                type: "name",
                title: "使用單播 DHCP 取得IP位址",
                content: "如果您的ISP的DHCP伺服器不支援廣播應用且您無法浮動取得IP位址，請勾選此核取方塊。"
            }, {
                type: "title",
                title: "網際網路連線類型: PPPoE"
            }, {
                type: "paragraph",
                content: "如果您的ISP（如：Hinet、台灣大寬頻...等）提供您一組「使用者名稱（帳號）、密碼」，請選擇此類型。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入由ISP所提供的使用者名稱、密碼。請注意英文大、小寫之不同。"
            }, {
                type: "name",
                title: "IP位址/主要DNS/次要DNS",
                content: "這些參數將會由ISP的DHCP伺服器自動提供。"
            }, {
                type: "name",
                title: "第二連線 (無, 浮動 IP, 固定 IP)",
                children: [{
                    type: "name",
                    title: "無",
                    content: "如果ISP沒有提供第二連線，請選擇此項目。(在台灣請選此項目，除非ISP有特殊需求。)"
                }, {
                    type: "name",
                    title: "浮動 IP",
                    content: "如果IP 位址與子網路遮罩由ISP自動提供，請選擇此項目。",
                    children: [{
                        type: "name",
                        title: "更新",
                        content: "點選此按鈕以從 DHCP 伺服器取得新的IP參數。"
                    }, {
                        type: "name",
                        title: "釋放",
                        content: "點選此按鈕以釋放從 DHCP 伺服器取得的IP參數。"
                    }]
                }, {
                    type: "name",
                    title: "固定 IP",
                    content: "如果您的ISP業者提供您一組IP參數(IP位址、子網路遮罩、預設閘道、DNS伺服器位址)填寫，請選擇此類型並填寫入對應欄位。"
                }]
            }, {
                type: "name",
                title: "MTU 大小",
                content: "一般常見的乙太網路MTU （Maximum Transmit Unit）數值為1480。",
                children: [{
                    type: "note",
                    title: "註",
                    content: "通常您不需要修改這個數值，除非您的ISP有特別需求！"
                }]
            }, {
                type: "name",
                title: "服務名稱/存取集中器(AC)名稱",
                content: "預設值為未填寫。除非您的ISP（如：Hinet、台灣大寬頻、遠傳大寬頻...等）有要求填寫，不然請勿填入任何數值！"
            }, {
                type: "name",
                title: "偵測連線間隔",
                content: "請輸入一個間隔時間(0-120)秒，路由器將會據此重複檢查Access Concentrator連線狀態。預設值為10。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "如果您的ISP提供一個固定的IP位址，請選擇使用下列的IP位址並輸入IP位址到此欄位。否則選擇從ISP浮動取得以自動獲取伺服器指派的IP位址。"
            }, {
                type: "name",
                title: "DNS 位址/主要 DNS/次要 DNS",
                content: "如果您的ISP業者要您填寫特定的DNS位址，請勾選使用下列的DNS伺服器位址，並在「主要DNS」與「次要DNS」中填入DNS伺服器的IP位址，否則您的ISP將會自動分配DNS伺服器位址給您。"
            }, {
                type: "name",
                title: "連線模式",
                content: "請選擇一個合適的連線模式，用於決定如何連接到網際網路。",
                children: [{
                    type: "name",
                    title: "自動",
                    content: "路由器將會在斷線後自動恢復連線，永遠保持連線狀態。"
                }, {
                    type: "name",
                    title: "依需求",
                    content: "在此模式，您可以設定路由器超過「最長閒置時間」後，仍沒有任何網路連線活動時，將自動終止連線，直到有新的網路連線需求時再自動重新連線。"
                }, {
                    type: "name",
                    title: "依時間",
                    content: "在此模式，網際網路連線只會在指定的時間段內被建立。如果選擇此模式，請輸入開始時間與結束時間，都採用HH:MM格式。"
                }, {
                    type: "name",
                    title: "手動",
                    content: "一般我們不建議您使用這個選項，因為每次路由器斷線後您都必須進入分享器的管理介面，手動恢復連線。此模式也支援設定「最長閒置時間」(預設值為15分鐘，也可設定為0代表不中斷連線)，超過該時間仍沒有任何網路連線活動時，將自動終止連線，直到您手動恢復連線為止。"
                }, {
                    type: "note",
                    title: "註",
                    content: "依時間的連線模式只有在系統時間被設定後才會生效，您可以在 進階設定 → 系統工具 → 時間設定 頁面中進行設定。"
                }]
            }, {
                type: "title",
                title: "網際網路連線類型: BigPond Cable"
            }, {
                type: "paragraph",
                content: "如果您的ISP提供BigPond Cable 連線方式，請選擇請選擇此類型。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入由ISP所提供的使用者名稱、密碼。請注意英文大、小寫之不同。"
            }, {
                type: "name",
                title: "驗證伺服器",
                content: "請輸入驗證伺服器的IP位址或主機名稱。"
            }, {
                type: "name",
                title: "驗證域名",
                content: "輸入伺服器的域名後綴（根據您的地點）。如：NSW/ACT的「nsw.bigpond.net.au」，VIC/TAS/WA/SA/NT的「vic.bigpond.net.au」或QLD的「qld.bigpond.net.au」。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "一般常見的乙太網路MTU （Maximum Transmit Unit）數值為1500。通常您不需要修改這個數值，除非您的ISP有特別需求！"
            }, {
                type: "name",
                title: "連線模式",
                content: "請選擇一個合適的連線模式，用於決定如何連接到網際網路。",
                children: [{
                    type: "name",
                    title: "自動",
                    content: "路由器將會在斷線後自動恢復連線，永遠保持連線狀態。"
                }, {
                    type: "name",
                    title: "依需求",
                    content: "在此模式，您可以設定路由器超過「最長閒置時間」後，仍沒有任何網路連線活動時，將自動終止連線，直到有新的網路連線需求時再自動重新連線。"
                }, {
                    type: "name",
                    title: "手動",
                    content: "一般我們不建議您使用這個選項，因為每次路由器斷線後您都必須進入分享器的管理介面，手動恢復連線。此模式也支援設定「最長閒置時間」(預設值為15分鐘，也可設定為0代表不中斷連線)，超過該時間仍沒有任何網路連線活動時，將自動終止連線，直到您手動恢復連線為止。"
                }]
            }, {
                type: "title",
                title: "網際網路連線類型: L2TP/PPTP"
            }, {
                type: "paragraph",
                content: "如果您的ISP提供L2TP/PPTP連線方式，請選擇請選擇此類型。(在台灣您不會使用到此連線類型)"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入由ISP所提供的使用者名稱、密碼。請注意英文大、小寫之不同。"
            }, {
                type: "name",
                title: "IP位址/主要DNS/次要DNS",
                content: "這些參數將會由ISP自動提供。"
            }, {
                type: "name",
                title: "第二連線 (浮動 IP 或 固定 IP)",
                children: [{
                    type: "name",
                    title: "浮動 IP",
                    content: "如果IP 位址與子網路遮罩由ISP自動提供，請選擇此項目。"
                }, {
                    type: "name",
                    title: "固定 IP",
                    content: "如果ISP提供您一組特定的IP參數，如： IP 位址、子網路遮罩、閘道、DNS位址等，請選擇此項目並輸入這些資訊到對應欄位。"
                }]
            }, {
                type: "name",
                title: "VPN伺服器IP/網域名稱",
                content: "請輸入ISP提供的伺服器IP位址或網域名稱。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "MTU是封包傳輸的大小單位，最常見的L2TP採用1460而PPTP採用1420，一般而言您不需要修改這個數值，除非您的ISP有特別需求！"
            }, {
                type: "name",
                title: "連線模式",
                content: "請選擇一個合適的連線模式，用於決定如何連接到網際網路。",
                children: [{
                    type: "name",
                    title: "自動",
                    content: "路由器將會在斷線後自動恢復連線，永遠保持連線狀態。"
                }, {
                    type: "name",
                    title: "依需求",
                    content: "在此模式，您可以設定路由器超過「最長閒置時間」後，仍沒有任何網路連線活動時，將自動終止連線，直到有新的網路連線需求時再自動重新連線。"
                }, {
                    type: "name",
                    title: "手動",
                    content: "一般我們不建議您使用這個選項，因為每次路由器斷線後您都必須進入分享器的管理介面，手動恢復連線。此模式也支援設定「最長閒置時間」(預設值為15分鐘，也可設定為0代表不中斷連線)，超過該時間仍沒有任何網路連線活動時，將自動終止連線，直到您手動恢復連線為止。"
                }]
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        INTERNET_MAC: {
            TITLE: "複製MAC位址",
            CONTENT: [{
                type: "name",
                title: "使用預設的 MAC 位址",
                content: "不改變路由器預設的MAC位址，一般ADSL/VDSL用戶請選擇此項目。"
            }, {
                type: "name",
                title: "使用目前電腦的 MAC 位址",
                content: "會將目前操作電腦的MAC位址複製到路由器的WAN端，當您的ISP僅對您的電腦加入放行白名單時，請選擇此項。"
            }, {
                type: "name",
                title: "使用自訂的 MAC 位址",
                content: "您可以手動輸入ISP所要求的特定MAC位址。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        LAN_IPV4: {
            TITLE: "區域網路(LAN)",
            CONTENT: [{
                type: "paragraph",
                content: "顯示路由器的MAC位址、IP位址與子網路遮罩"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "路由器區域網路(LAN)連接埠所具有的獨一無二的實體位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "路由器的內部IP位址，可用以登入WEB管理介面，您可以變更這項參數。"
            }, {
                type: "name",
                title: "子網路遮罩",
                content: "用以分割網路的參數，一般而言不需要修改這個參數，除非您有特別需求！"
            }, {
                type: "note",
                title: "註",
                content: "如果您變更的LAN IP位址與預設值在不同網段，DHCP伺服器的參數會自動跟隨對應變更，但是「虛擬伺服器」、「DMZ主機」等設定不會自動變更，必須手動進行變更。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        IPTV: {
            TITLE: "設定",
            CONTENT: [{
                type: "name",
                title: "IGMP 窺探",
                content: "選取此項目，可啟用 IGMP (網際網路群組管理通訊協定) 窺探功能。"
            }, {
                type: "name",
                title: "IGMP 代理",
                content: "請根據您的ISP選擇IGMP (Internet Group Management Protocol) 代理版本，如：V2或V3。"
            }, {
                type: "name",
                title: "IGMP版本",
                content: "請根據您的ISP選擇IGMP版本。"
            }, {
                type: "name",
                id: "udpxy-help",
                title: "UDP代理",
                content: "「UDP代理」可以將群播串流（UDP）轉換為HTTP（TCP）串流，這可以讓一些不支援群播的智慧型電視或智慧型手機等設備觀看IPTV。",
                children: [{
                    type: "note",
                    title: "註",
                    content: "UDP(代理) 預設連接埠為4022。您可以變更此數值，但該數值必須介於1024-65535之間。"
                }]
            }, {
                type: "name",
                title: "IPTV/VLAN",
                content: "選擇啟用IPTV/VLAN功能。"
            }, {
                type: "name",
                title: "模式",
                content: "請根據您的ISP的提供進行選擇。在此提供六種IPTV模式：",
                children: [{
                    type: "name",
                    title: "橋接",
                    content: "如果您的ISP不在以下列表且也沒有任何參數設定需求，您可以簡單的選擇此模式並設定路由器的LAN連接埠功能。若您是中華電信MOD連接，請選擇此項目。",
                    children: [{
                        type: "name",
                        title: "LAN 1/2/3/4",
                        content: "請選擇您欲指定的LAN連接埠作為網際網路或IPTV使用。"
                    }]
                }, {
                    type: "name",
                    title: "自訂",
                    content: "如果您的ISP不在以上清單並且需要填入對應參數，包含： 網際網路/IP-電話/IPTV VLAN IDs 與 優先級與LAN (1/2/3/4) 連接埠功能，請選擇此項目。",
                    children: [{
                        type: "name",
                        title: "網際網路/IP-電話/IPTV VLAN ID/優先級",
                        content: "請根據您ISP所提供的參數設定VLAN ID。"
                    }, {
                        type: "name",
                        title: "802.11Q Tag",
                        content: "選擇是否將網際網路封包進行802.11Q標記。"
                    }, {
                        type: "name",
                        title: "IPTV 組播 VLAN ID/優先級",
                        content: "您可以根據需要啟用IPTV組播功能，並根據您的ISP設定VLAN ID和優先級。"
                    }, {
                        type: "name",
                        title: "LAN 1/2/3/4",
                        content: "指定您的LAN埠做為網際網路、IP-電話、IPTV的支援埠。"
                    }]
                }]
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        DHCP_SERVER_SETTINGS: {
            TITLE: "設定",
            CONTENT: [{
                type: "name",
                title: "DHCP 伺服器",
                content: "「DHCP(Dynamic Host Configuration Protocol = 動態主機設定協定)伺服器」是路由器的預設功能，這項功能可以自動將正確的IP參數提供給區域網路內的電腦，一般而言，如果您沒有特別需求，您不需要特別設定這項功能的參數。另外，除非您內部網路已經有另一個主要的DHCP伺服器或您想要手動設定所有內部網路的IP位址，否則請勿停用此功能。"
            }, {
                type: "name",
                title: "IP 位址範圍",
                content: "請輸入可以被使用者端租用的IP位址範圍。"
            }, {
                type: "name",
                title: "位址租用時間",
                content: "請輸入IP租用時間，範圍介於2-2880分鐘之間。預設值為120分鐘。"
            }, {
                type: "name",
                title: "預設閘道",
                content: "請輸入LAN IP位址。(選填)"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "請輸入ISP提供的DNS伺服器IP位址。(選填)"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        RESERVED_IP_ADDRESS: {
            TITLE: "保留指定IP位址",
            CONTENT: [{
                type: "paragraph",
                content: "如果您想要讓內部特定電腦永遠取得相同的IP位址，可以在此進行設定，設定後只要透過此路由器自動取得IP位址即可。（該IP位址會一直保留給指定電腦）。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "此為需永遠取得相同IP位址的電腦的MAC位址。"
            }, {
                type: "name",
                title: "保留 IP 位址",
                content: "此為要保留給該電腦的IP位址。"
            }, {
                type: "name",
                title: "描述",
                content: "顯示關於該使用設備的描述。"
            }, {
                type: "name",
                title: "狀態",
                content: "顯示該使用設備目前的狀態(「啟用」或「停用」)。"
            }, {
                type: "name",
                title: "修改",
                content: "您可以修改或刪除目前已存在的設定。"
            }, {
                type: "step",
                title: "保留指定IP位址設定步驟",
                content: ["1. 點選 增加。", "2. 輸入您要保留IP位址的電腦的MAC 位址。", "3. 輸入您要保留給該電腦的IP位址。", "4. 為這個使用設備輸入一個相關描述。", "5. 選擇 啟用。", "6. 點選 確定。"]
            }, {
                type: "step",
                title: "修改或刪除已存在的使用設備",
                content: '請在列表中針對您想要修改或刪除的使用設備的對應位置，點選"編輯"或"刪除"。'
            }]
        },
        DHCP_CLIENT_LIST: {
            TITLE: "DHCP 使用者列表",
            CONTENT: [{
                type: "name",
                title: "使用者數量",
                content: "顯示目前被DHCP服務的使用者數量。"
            }, {
                type: "name",
                title: "使用者名稱",
                content: "DHCP使用者的名稱。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "DHCP使用者的 MAC 位址。"
            }, {
                type: "name",
                title: "分配的IP 位址",
                content: "DHCP使用者的被分配到的 IP 位址。"
            }, {
                type: "name",
                title: "租用時間",
                content: "顯示該使用者的IP位址剩餘可租用時間。"
            }, {
                type: "name",
                title: "重新整理",
                content: "點選此按鈕以更新DHCP使用者列表。"
            }]
        },
        DDNS: {
            TITLE: "動態 DNS",
            CONTENT: [{
                type: "paragraph",
                content: "動態DNS(網域名稱系統)讓您可以指派固定的主機與網域名稱到浮動的網際網路IP位址。當您要在路由器後建立您自己的網站、FTP伺服器或另一個伺服器時，這個功能是相當有用的。首先，您必須先向動態DNS服務供應商註冊域名，例如：www.dyndns.com。然後請輸入您的註冊資訊。"
            }, {
                type: "step",
                title: "設定 動態DNS",
                content: ["1. 選擇動態DNS服務供應商。", "2. 輸入您DDNS帳號的使用者名稱與密碼。", "3. 輸入您跟動態DNS服務供應商註冊的網域名稱。", "4. 選擇將要傳送動態DNS更新請求的時間間隔。", "5. 如果您的服務供應商是NO-IP，請選擇WAN IP綁定以確保該網域名稱已經綁定到此路由器的WAN IP。", "6. 點選登入並儲存。"]
            }, {
                type: "note",
                title: "註",
                content: "如果您想要使用新的DDNS帳號，請先登出然後再使用新帳號登入。"
            }]
        },
        DYNAMIC_DNS: {
            TITLE: "動態 DNS",
            CONTENT: [{
                type: "paragraph",
                content: "動態DNS(網域名稱系統)讓您可以指派固定的主機與網域名稱到浮動的網際網路IP位址。當您要在路由器後建立您自己的網站、FTP伺服器或另一個伺服器時，這個功能是相當有用的。首先，您必須先向動態DNS服務供應商註冊域名，例如：www.dyndns.com。然後請輸入您的註冊資訊。"
            }]
        },
        DOMAIN_NAME_LIST: {
            TITLE: "網域名稱列表",
            CONTENT: [{
                type: "paragraph",
                content: "此表格顯示了註冊到您TP-Link ID的動態DNS網域名稱。"
            }, {
                type: "step",
                title: "註冊新的網域名稱",
                content: ["1. 點選註冊。", "2. 輸入網域名稱。", "3. 點選儲存。"]
            }]
        },
        ADVANCED_ROUTING_STATIC_ROUTING: {
            TITLE: "固定路由",
            CONTENT: [{
                type: "paragraph",
                content: "固定路由是一個事先決定的路徑，可以讓您的網路資訊封包到達指定的主機或網路，在此您可以新增或刪除固定路由的規則。請注意，在您沒有專業的網路設定知識前，請勿進行固定路由設定，因為這可能會導致您的網路連線發生問題。"
            }, {
                type: "step",
                title: "設定固定路由",
                content: ["1. 點選 增加。", "2. 目標網路 - 請輸入正確格式的IP位址為此項目指派固定路由。", "3. 子網路遮罩 - 請輸入正確格式的子網路遮罩來確定IP位址的網路部分和主機部分。", "4. 預設閘道 - 請輸入閘道IP位址以將路由器連接到網路或主機。", "5. 介面 - 請選擇 LAN 或 WAN 指定目標網路的類型。", "6. 描述 - 請為此項目輸入一個簡短的描述。", "7. 選擇啟用。", "8. 點選 確定。"]
            }, {
                type: "step",
                title: "修改或刪除已存在項目",
                content: "在表格內您可以點選編輯圖示或刪除圖示以進行您想要的操作。"
            }]
        },
        ADVANCED_ROUTING_SYSTEM_ROUTING_TABLE: {
            TITLE: "系統路由表",
            CONTENT: [{
                type: "paragraph",
                content: "在「系統路由表」中您可以看到所有目前正在使用中的路由規則的相關資訊。"
            }, {
                type: "paragraph",
                content: "點選 重新整理 按鈕可以更新這個頁面的資訊。"
            }]
        },
        WIRELESS_TITLE: {
            TITLE: "無線網路設定",
            CONTENT: [{
                type: "paragraph",
                content: "請依您所需設定無線網路。"
            }]
        },
        WIRELESS_REGION: {
            TITLE: "設定",
            CONTENT: [{
                type: "name",
                title: "地區",
                content: "請您選擇正確的地區，以符合當地無線通訊的法律規定。不正確的設定在某些國家可能會犯法！"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        WIRELESS_SMART_CONNECT: {
            TITLE: "智慧連線",
            CONTENT: [{
                type: "paragraph",
                content: "勾選這個核取方塊，即可啟用智慧連線。這項功能會根據實際條件，為裝置指派最佳的無線頻段以平衡網路需求，所以有助於裝置執行得更快。"
            }]
        },
        WIRELESS_24G: {
            TITLE: "無線網路 2.4GHz",
            CONTENT: [{
                type: "name",
                title: "啟用無線網路功能",
                content: "勾選核取方塊以啟用2.4GHz 無線網路功能。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "您可以使用預設的無線網路名稱 (SSID) ，也可以自行更換為其他名稱，最長32個字並請勿輸入中文。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "如果您要隱藏 2.4GHz 無線網路名稱 (SSID)，請勾選核取方塊。"
            }, {
                type: "name",
                title: "安全性",
                content: "請選擇下列其中一個項目：",
                children: [{
                    type: "name",
                    title: "無安全性",
                    content: "一般而言，我們非常不建議您選擇這個選項，因為任何人皆可隨意連結、使用您的無線網路。"
                }, {
                    type: "name",
                    title: "WPA/WPA2-個人",
                    content: "一般小公司、家庭、個人使用的常見加密設定，具有高度的安全性，一般來說我們建議您選擇此項目，並繼續進行以下設定。",
                    children: [{
                        type: "name",
                        title: "版本",
                        content: "請為您的無線網路選擇一個安全性版本。",
                        children: [{
                            type: "name",
                            title: "自動",
                            content: "路由器會以無線網卡的技術相容性與請求，自動對應為 WPA-PSK 或 WPA2-PSK 。"
                        }, {
                            type: "name",
                            title: "WPA-PSK",
                            content: "這個選項僅支援TKIP加密，可以提供良好的保護等級。"
                        }, {
                            type: "name",
                            title: "WPA2-PSK",
                            content: "這個選項支援AES加密，可以提供最好的保護等級，我們較建議採用此項目。"
                        }]
                    }, {
                        type: "name",
                        title: "加密",
                        content: "您可以選擇TKIP或AES二種加密方式，我們強烈建議選擇AES，因為除了它完全符合802.11N規範以外，同時AES安全性也較TKIP來的高。"
                    }, {
                        type: "name",
                        title: "無線連線密碼",
                        content: "請輸入8-63位ASCII碼密碼，或者8-64位十六進位碼密碼。"
                    }]
                }, {
                    type: "name",
                    title: "WPA/WPA2-企業",
                    content: "目前最安全的企業級安全性設定，由於牽涉到上游RADIUS伺服器之架設，所以一般家庭不會採用此加密方式。如果選擇此方式，WPS功能將會被停用。",
                    children: [{
                        type: "name",
                        title: "版本",
                        content: "請為您的無線網路選擇一個安全性版本。",
                        children: [{
                            type: "name",
                            title: "自動",
                            content: "路由器會以無線網卡的技術相容性與請求，自動對應為 WPA-PSK 或 WPA2-PSK 。"
                        }, {
                            type: "name",
                            title: "WPA",
                            content: "這個選項僅支援TKIP加密，可以提供良好的保護等級。"
                        }, {
                            type: "name",
                            title: "WPA2",
                            content: "這個選項支援AES加密，可以提供最好的保護等級，我們較建議採用此項目。"
                        }]
                    }, {
                        type: "name",
                        title: "加密",
                        content: "您可以選擇TKIP或AES二種加密方式，我們強烈建議選擇AES，因為除了它完全符合802.11N規範以外，同時AES安全性也較TKIP來的高。"
                    }, {
                        type: "name",
                        title: "RADIUS 伺服器 IP位址",
                        content: "請輸入Radius伺服器的IP位址。"
                    }, {
                        type: "name",
                        title: "RADIUS 通訊埠",
                        content: "請輸入Radius伺服器的通訊埠號碼。"
                    }, {
                        type: "name",
                        title: "RADIUS 連線密碼",
                        content: "請輸入Radius伺服器的連線密碼。"
                    }]
                }, {
                    type: "name",
                    title: "WEP",
                    content: "基本的安全性防護，除非您的使用設備僅支援WEP加密，否則我們不建議您選擇此項目。",
                    children: [{
                        type: "name",
                        title: "類型",
                        content: "請選擇無線網路的驗證方式，預設值是 自動 一般而言您也不需特別去變更此設定。"
                    }, {
                        type: "name",
                        title: "WEP金鑰格式",
                        content: "可以選擇使用 ASCII碼 格式或十六進位碼。使用「十六進位碼」時，僅可輸入（0-9，a-f，A-F）。使用「ASCII碼」時，則可輸入（0-9，a-z ，A-Z）。"
                    }, {
                        type: "name",
                        title: "金鑰類型",
                        content: "請選擇WEP金鑰長度。",
                        children: [{
                            type: "name",
                            title: "64-bit",
                            content: "您必須輸入「剛好10個16進位碼」的密碼或「剛好5個ASCII碼」的密碼。"
                        }, {
                            type: "name",
                            title: "128-bit",
                            content: "您必須輸入「剛好26個16進位碼」的密碼或「剛好13個ASCII碼」的密碼。"
                        }]
                    }, {
                        type: "name",
                        title: "金鑰值",
                        content: "請輸入WEP金鑰到對應欄位。"
                    }]
                }]
            }, {
                type: "name",
                title: "模式",
                content: "請選擇一個傳輸模式。"
            }, {
                type: "name",
                title: "頻道寬度",
                content: "請為2.4GHz 無線網路選擇頻道寬度，一般而言使用預設值即可。"
            }, {
                type: "name",
                title: "頻道",
                content: "您可以選擇您想要使用的2.4GHz無線頻道，但除非您有熟練的設定經驗，不然我們建議您保持預設值-自動。"
            }, {
                type: "name",
                title: "傳輸功率",
                content: "一共有高、中、低三個項目可以選擇，建議維持預設值「高」。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }, {
                type: "name",
                id: "atf_2g4",
                title: "通訊公平功能",
                content: "勾選此核取方塊以啟用通訊公平(ATF)功能，這可以讓您去優化每個流量的吞吐量。ATF流量排程使用預先目的地通訊目標以平衡整個流量目的地的通訊用量"
            }, {
                type: "name",
                id: "mu_mimo_2g4",
                title: "多使用者MIMO功能",
                content: "點選以啟用多使用者MIMO功能。"
            }]
        },
        WIRELESS_5G: {
            TITLE: "無線網路 5GHz",
            CONTENT: [{
                type: "name",
                title: "啟用無線網路功能",
                content: "勾選核取方塊以啟用5GHz 無線網路功能。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "您可以使用預設的無線網路名稱 (SSID) ，也可以自行更換為其他名稱，最長32個字並請勿輸入中文。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "如果您要隱藏 5GHz 無線網路名稱 (SSID)，請勾選核取方塊。"
            }, {
                type: "name",
                title: "安全性",
                content: "請選擇下列其中一個項目：",
                children: [{
                    type: "name",
                    title: "無安全性",
                    content: "一般而言，我們非常不建議您選擇這個選項，因為任何人皆可隨意連結、使用您的無線網路。"
                }, {
                    type: "name",
                    title: "WPA/WPA2-個人",
                    content: "一般小公司、家庭、個人使用的常見加密設定，具有高度的安全性，一般來說我們建議您選擇此項目，並繼續進行以下設定。",
                    children: [{
                        type: "name",
                        title: "版本",
                        content: "請為您的無線網路選擇一個安全性版本。",
                        children: [{
                            type: "name",
                            title: "自動",
                            content: "路由器會以無線網卡的技術相容性與請求，自動對應為 WPA-PSK 或 WPA2-PSK 。"
                        }, {
                            type: "name",
                            title: "WPA-PSK",
                            content: "這個選項僅支援TKIP加密，可以提供良好的保護等級。"
                        }, {
                            type: "name",
                            title: "WPA2-PSK",
                            content: "這個選項支援AES加密，可以提供最好的保護等級，我們較建議採用此項目。"
                        }]
                    }, {
                        type: "name",
                        title: "加密",
                        content: "您可以選擇TKIP或AES二種加密方式，我們強烈建議選擇AES，因為除了它完全符合802.11N規範以外，同時AES安全性也較TKIP來的高。"
                    }, {
                        type: "name",
                        title: "無線連線密碼",
                        content: "請輸入8-63位ASCII碼密碼，或者8-64位十六進位碼密碼。"
                    }]
                }, {
                    type: "name",
                    title: "WPA/WPA2-企業",
                    content: "目前最安全的企業級安全性設定，由於牽涉到上游RADIUS伺服器之架設，所以一般家庭不會採用此加密方式。如果選擇此方式，WPS功能將會被停用。",
                    children: [{
                        type: "name",
                        title: "版本",
                        content: "請為您的無線網路選擇一個安全性版本。",
                        children: [{
                            type: "name",
                            title: "自動",
                            content: "路由器會以無線網卡的技術相容性與請求，自動對應為 WPA-PSK 或 WPA2-PSK 。"
                        }, {
                            type: "name",
                            title: "WPA",
                            content: "這個選項僅支援TKIP加密，可以提供良好的保護等級。"
                        }, {
                            type: "name",
                            title: "WPA2",
                            content: "這個選項支援AES加密，可以提供最好的保護等級，我們較建議採用此項目。"
                        }]
                    }, {
                        type: "name",
                        title: "加密",
                        content: "您可以選擇TKIP或AES二種加密方式，我們強烈建議選擇AES，因為除了它完全符合802.11N規範以外，同時AES安全性也較TKIP來的高。"
                    }, {
                        type: "name",
                        title: "RADIUS 伺服器 IP位址",
                        content: "請輸入Radius伺服器的IP位址。"
                    }, {
                        type: "name",
                        title: "RADIUS 通訊埠",
                        content: "請輸入Radius伺服器的通訊埠號碼。"
                    }, {
                        type: "name",
                        title: "RADIUS 連線密碼",
                        content: "請輸入Radius伺服器的連線密碼。"
                    }]
                }, {
                    type: "name",
                    title: "WEP",
                    content: "基本的安全性防護，除非您的使用設備僅支援WEP加密，否則我們不建議您選擇此項目。",
                    children: [{
                        type: "name",
                        title: "類型",
                        content: "請選擇無線網路的驗證方式，預設值是 自動 一般而言您也不需特別去變更此設定。"
                    }, {
                        type: "name",
                        title: "WEP金鑰格式",
                        content: "可以選擇使用 ASCII碼 格式或十六進位碼。使用「十六進位碼」時，僅可輸入（0-9，a-f，A-F）。使用「ASCII碼」時，則可輸入（0-9，a-z ，A-Z）。"
                    }, {
                        type: "name",
                        title: "金鑰類型",
                        content: "請選擇WEP金鑰長度。",
                        children: [{
                            type: "name",
                            title: "64-bit",
                            content: "您必須輸入「剛好10個16進位碼」的密碼或「剛好5個ASCII碼」的密碼。"
                        }, {
                            type: "name",
                            title: "128-bit",
                            content: "您必須輸入「剛好26個16進位碼」的密碼或「剛好13個ASCII碼」的密碼。"
                        }]
                    }, {
                        type: "name",
                        title: "金鑰值",
                        content: "請輸入WEP金鑰到對應欄位。"
                    }]
                }]
            }, {
                type: "name",
                title: "模式",
                content: "請選擇一個傳輸模式。"
            }, {
                type: "name",
                title: "頻道寬度",
                content: "請為5GHz 無線網路選擇頻道寬度，一般而言使用預設值即可。"
            }, {
                type: "name",
                title: "頻道",
                content: "您可以選擇您想要使用的5GHz無線頻道，但除非您有熟練的設定經驗，不然我們建議您保持預設值-自動。"
            }, {
                type: "name",
                title: "傳輸功率",
                content: "一共有高、中、低三個項目可以選擇，建議維持預設值「高」。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }, {
                type: "name",
                id: "atf_5g",
                title: "通訊公平功能",
                content: "勾選此核取方塊以啟用通訊公平(ATF)功能，這可以讓您去優化每個流量的吞吐量。ATF流量排程使用預先目的地通訊目標以平衡整個流量目的地的通訊用量"
            }, {
                type: "name",
                id: "mu_mimo_5g",
                title: "多使用者MIMO功能",
                content: "點選以啟用多使用者MIMO功能。"
            }]
        },
        WPS: {
            TITLE: "路由器的PIN",
            CONTENT: [{
                type: "paragraph",
                content: "其他設備可以透過WPS以路由器的PIN碼方式連接到這台路由器。"
            }, {
                type: "name",
                title: "路由器的PIN",
                content: "開啟此選項可以讓無線設備透過路由器的PIN碼與路由器無線連線。(開啟此功能具有一定程度的安全性風險)"
            }, {
                type: "name",
                title: "PIN",
                content: "顯示路由器的PIN碼。您可以在產品底部找到預設值。點選 生成 可以亂數生成新的PIN碼，或點選預設值將PIN碼還原至出廠設定。"
            }]
        },
        WPS_WIZARD: {
            TITLE: "WPS設定導引",
            CONTENT: [{
                type: "name",
                title: "按按鈕 (建議選項)",
                content: "選擇此設定方法啟用WPS功能可以簡單的透過WPS按鈕連接WPS設備，您可以使用路由器上的實體WPS按鈕或本頁面上的 連線 按鈕。"
            }, {
                type: "name",
                title: "PIN",
                content: "選擇此設定方式是採用在本頁面手動輸入無線設備的WPS PIN碼到此欄位中，並點選 連線。"
            }]
        },
        WIRELESS_TXBF_MUMIMO: {
            TITLE: "TxBF, MU-MIMO",
            CONTENT: [{
                type: "paragraph",
                content: "TxBF、MU-MIMO (傳輸波束成形、多使用者多進多出)讓路由器能夠提高網路負載量並加強Wi-Fi訊號。請勾選核取方塊以啟用此功能。"
            }]
        },
        WIRELESS_STATISTICS: {
            TITLE: "無線連線設備",
            CONTENT: [{
                type: "name",
                title: "使用者數量",
                content: "顯示目前連線的無線設備數量。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示目前該連線使用者的MAC位址。"
            }, {
                type: "name",
                title: "連線類型",
                content: "顯示目前該連線使用者所使用的頻段(2.4GHz 或 5GHz) 。"
            }, {
                type: "name",
                title: "安全性",
                content: "顯示無線設備連線所採用的加密方式。"
            }, {
                type: "name",
                title: "已接收封包",
                content: "顯示目前該連線使用者總計已接收的封包數量。"
            }, {
                type: "name",
                title: "已傳送封包",
                content: "顯示目前該連線使用者總計已傳送的封包數量。"
            }, {
                type: "paragraph",
                content: "點選 重新整理 可以更新DHCP使用者列表。"
            }]
        },
        WIRELESS_SCHEDULE: {
            TITLE: "網路使用時間表",
            CONTENT: [{
                type: "paragraph",
                content: "透過無線排程，您可以在特定期間內停用某一頻段的無線信號。例如：您可以在00:00到07:00之間關閉2.4GHz的無線訊號。"
            }, {
                type: "name",
                title: "2.4GHz | 5GHz",
                content: "選取 2.4GHz 或 5GHz 來變更對應的設定。"
            }, {
                type: "name",
                title: "網路使用時間表",
                content: "切至「開啟」可啟用網路使用時間表功能。"
            }, {
                type: "name",
                title: "編輯排定時間",
                content: "點擊並拖過格子以選擇您需要自動關閉無線的時間週期。生效時間排程是基於路由器的時間。時間可以在「系統工具->時間設定」中進行設定。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        GUEST_NETWORK_SETTINGS: {
            TITLE: "設定",
            CONTENT: [{
                type: "paragraph",
                content: "訪客網路可以讓您創建一個獨立無線網路環境(不同的SSID與密碼)且訪客無法連線到您的私人內部網路，以維持您內部網路的安全性。"
            }, {
                type: "name",
                title: "允許訪客可以互相連線",
                content: "勾選此核取方塊可以讓連線到此的訪客，彼此可以透過此訪客網路互相溝通。"
            }, {
                type: "name",
                id: "access_local",
                title: "允許訪客可以存取我的本地網路",
                content: "勾選選此核取方塊可以讓連線到此的訪客，可以連線到內部網路共用電腦或儲存設備的資料檔案，也可以共用網路印表機。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        GUEST_NETWORK_WIRELESS: {
            TITLE: "無線網路 2.4GHz/5GHz",
            CONTENT: [{
                type: "name",
                title: "啟用訪客網路",
                content: "勾選選此核取方塊可以啟用訪客網路功能。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "請您設定32字以內的訪客無線網路名稱 (SSID) ，請勿輸入中文。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "如果您要隱藏訪客無線網路名稱 (SSID)，請勾選核取方塊。"
            }, {
                type: "name",
                id: "pwd_mode",
                title: "密碼更新間隔",
                content: "請選訪客網路密碼的更新間隔。"
            }, {
                type: "name",
                title: "安全性",
                content: "當您選擇 永不更新密碼時，請選擇以下的安全性項目。",
                children: [{
                    type: "name",
                    title: "無安全性",
                    content: "一般而言，我們非常不建議您選擇這個選項，因為任何人皆可隨意連結、使用您的訪客無線網路。"
                }, {
                    type: "name",
                    title: "WPA/WPA2-個人",
                    content: "目前最安全的家用安全性設定，此項目也是預設與建議項目，如果選擇此項目，會有下列子選項。",
                    children: [{
                        type: "name",
                        title: "版本",
                        content: "請為您的訪客無線網路選擇一個安全性版本。",
                        children: [{
                            type: "name",
                            title: "自動",
                            content: "路由器會以無線網卡的技術相容性與請求，自動對應為 WPA-PSK 或 WPA2-PSK 。"
                        }, {
                            type: "name",
                            title: "WPA-PSK",
                            content: "這個選項僅支援TKIP加密，可以提供良好的保護等級。"
                        }, {
                            type: "name",
                            title: "WPA2-PSK",
                            content: "這個選項支援AES加密，可以提供最好的保護等級，我們較建議採用此項目。"
                        }]
                    }, {
                        type: "name",
                        title: "加密",
                        content: "您可以選擇TKIP或AES二種加密方式，我們強烈建議選擇AES，因為除了它完全符合802.11N規範以外，同時AES安全性也較TKIP來的高。"
                    }]
                }]
            }, {
                type: "name",
                title: "無線連線密碼",
                content: "可以使用隨機生成的密碼，或者請輸入8-63位ASCII碼密碼，或者8-64位十六進位碼密碼(0-9, a-f, A-F)。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        NAT: {
            TITLE: "應用層閘道(ALG)",
            CONTENT: [{
                type: "paragraph",
                content: "ALG (應用層閘道Application Layer Gateway )允許特別的NAT traversal filters機制，可以讓連接到閘道的應用層傳輸協定正確的進行位址與通訊埠的轉譯，如：FTP、TFTP或H323...等。"
            }, {
                type: "name",
                title: "啟用 FTP ALG",
                content: "如果要允許FTP使用者與伺服器的資料傳輸透過NAT溝通，請選擇。"
            }, {
                type: "name",
                title: "啟用 TFTP ALG",
                content: "如果要允許TFTP使用者與伺服器的資料傳輸透過NAT溝通，請選擇。"
            }, {
                type: "name",
                title: "啟用 H323 ALG",
                content: "如果要允許視訊會議或語音傳輸（H323）使用者透過NAT溝通，請選擇。"
            }, {
                type: "name",
                title: "啟用 RTSP ALG",
                content: "如果要允許多媒體撥放器與串流媒體伺服器透過NAT溝通，請選擇。"
            }, {
                type: "name",
                title: "啟用 SIP ALG",
                content: "如果選擇，它允許用戶端透過NAT與SIP(會話發起協定)伺服器溝通。"
            }, {
                type: "name",
                title: "啟用PPTP穿透",
                content: "如果要允許內部電腦與外界建立Point-to-Point Tunneling Protocol （PPTP）方式的VPN連線，請選擇。"
            }, {
                type: "name",
                title: "啟用L2TP穿透",
                content: "如果要允許內部電腦與外界建立Layer 2 Point-to-Point Tunneling Protocol （L2TP）方式的VPN連線，請選擇。"
            }, {
                type: "name",
                title: "啟用IPSec穿透",
                content: "如果要允許內部電腦與外界建立Internet Protocol security （IPSec）方式的VPN連線，請選擇。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        VIRTUAL_SERVERS: {
            TITLE: "虛擬伺服器",
            CONTENT: [{
                type: "paragraph",
                content: "虛擬伺服器 虛擬伺服器功能可以協助您開放LAN端伺服器的對外連線功能，設定開放的通訊埠，在您有架站或者其他伺服器使用時，本項設定可以協助您的伺服器與外界建立聯繫管道。"
            }, {
                type: "name",
                title: "服務類型",
                content: "顯示虛擬伺服器的名稱。"
            }, {
                type: "name",
                title: "外部通訊埠",
                content: "顯示虛擬伺服器所使用的通訊埠號碼或號碼範圍。"
            }, {
                type: "name",
                title: "內部 IP",
                content: "顯示伺服器主機電腦所在的IP位址。"
            }, {
                type: "name",
                title: "內部通訊埠",
                content: "顯示伺服器主機電腦所使用的通訊埠號碼。"
            }, {
                type: "name",
                title: "通訊協定",
                content: "顯示該服務所使用的通訊協定： TCP、UDP 或 全部 (路由器所支援的全部通訊協定)。"
            }, {
                type: "name",
                title: "狀態",
                content: "顯示該虛擬伺服器規則目前的狀態(啟用 或 停用)。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該條對應規則 修改 或 刪除 的項目。"
            }, {
                type: "step",
                title: "設定虛擬伺服器規則",
                content: ["1. 點選 增加。", "2. 點選 查看現有服務 可以根據我們所預設的常見虛擬伺服器應用項目，快速的建立虛擬伺服器參數，會自動填入對應的外部通訊埠與內部通訊埠，最後您只要填入伺服器主機電腦的IP位址即可。如果您需要的服務不在列表中，您也可以手動設定，外部通訊埠號碼可以輸入單一數值(21)或一段範圍(21-25)；內部通訊埠如果與外部相同可保留空白；IP位址請輸入伺服器主機的內部網路IP位址。", "3. 從下拉式選單中選擇該服務所使用的通訊協定： TCP、UDP 或 全部。", "4. 選擇 啟用。", "5. 點選 確定。"]
            }, {
                type: "step",
                title: "修改或刪除 虛擬伺服器",
                content: "在表格內您可以點選編輯圖示或刪除圖示以進行您想要的操作。"
            }, {
                type: "step",
                title: "刪除複數規則",
                content: "勾選所有您想刪除的規則，並點選列表上方的 刪除 按鈕。"
            }, {
                type: "note",
                title: "註",
                content: "如果您的伺服器主機不只有服務一種項目，您可以分別為各項服務建立虛擬伺服器規則。"
            }]
        },
        PORT_TRIGGERING: {
            TITLE: "通訊埠觸發",
            CONTENT: [{
                type: "paragraph",
                content: "某些特別的應用程式需要多重連線，當這些服務無法在路由器的標準NAT機制下運作時，可以使用通訊埠觸發功能。"
            }, {
                type: "name",
                title: "應用程式",
                content: "顯示應用程式的名稱。"
            }, {
                type: "name",
                title: "觸發通訊埠",
                content: "顯示觸發通訊埠之值或範圍，當對外連線使用到「觸發通訊埠」時，通訊埠觸發規則就會自動啟用。"
            }, {
                type: "name",
                title: "觸發通訊協定",
                content: "顯示觸發通訊埠所以用之通訊協定，可能是TCP、UDP或全部。"
            }, {
                type: "name",
                title: "外部通訊埠",
                content: '顯示遠端系統可以使用的通訊埠之值或範圍，當觸發通訊埠規則啟動後，就會開啟這些外埠通訊埠並導向所設定IP位址之電腦。您可以輸入最多5個群組，群組間請以","分隔，例如：2000-2038, 2046, 2050-2051, 2085, 3010-3030。'
            }, {
                type: "name",
                title: "外部通訊協定",
                content: "顯示外部通訊埠所以用之通訊協定，可能是TCP、UDP或全部。"
            }, {
                type: "name",
                title: "狀態",
                content: "顯示該虛擬伺服器規則目前的狀態(啟用 或 停用)。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該條對應規則 修改 或 刪除 的項目。"
            }, {
                type: "step",
                title: "設定 觸發通訊埠 規則",
                content: [{
                    type: "note",
                    title: "註",
                    content: "每條規則同時間只能被一個主機使用。"
                }, "1. 點選 增加。", "2. 點選 查看現有應用程式 可以根據我們所預設的常見觸發通訊埠的應用項目，快速的建立觸發通訊埠參數值，會自動填入對應的觸發通訊埠與外部通訊埠與相關通訊協定，最後您只要填入使用該應用程式的電腦的IP位址即可。", "3. 選擇 啟用。", "4. 點選確定。"]
            }, {
                type: "step",
                title: "修改或刪除  觸發通訊埠",
                content: "在表格內您可以點選編輯圖示或刪除圖示以進行您想要的操作。"
            }, {
                type: "step",
                title: "刪除複數規則",
                content: "勾選所有您想刪除的規則，並點選列表上方的 刪除 按鈕。"
            }]
        },
        DMZ: {
            TITLE: "DMZ",
            CONTENT: [{
                type: "paragraph",
                content: "DMZ (Demilitarized Zone) 主機功能可以讓您設定一台內部電腦的IP位址，而路由器會將外界所有未經設定的連線要求，引導到這部電腦。在某些情況下您會需要使用這項功能，例如：伺服器架設、或某些線上遊戲因為連接分享器而無法進行遊戲時，這樣的情況您可以透過這個方式處理。在設定DMZ主機前，我們建議您將被設定為DMZ主機的電腦設為固定IP，例如：\\\\192.168.0.10。"
            }, {
                type: "step",
                title: "指定 電腦或伺服器 作為DMZ 主機",
                content: ["1. 點選 啟用 DMZ。", "2. 在 DMZ 主機 IP 位址欄位填入您想要指定為DMZ主機的內部電腦的IP位址。", "3. 點選儲存。"]
            }]
        },
        UPNP: {
            TITLE: "UPnP",
            CONTENT: [{
                type: "paragraph",
                content: "如果您的設備支援隨插即用（Universal Plug-and-Play = UPnP）功能(例如：Skype電話...)，該設備就會自行設定通訊協定與參數，讓您不用多費心進行設定。本項目預設值為啟用，若您有特殊需求，可以停用此項目。"
            }, {
                type: "paragraph",
                content: "UPnP 服務列表會顯示UPnP設備的相關資訊。"
            }, {
                type: "name",
                title: "服務描述",
                content: "顯示內部主機關於此UPnP請求的簡短描述。"
            }, {
                type: "name",
                title: "外部通訊埠",
                content: "顯示由內部主機所開啟的外埠通訊埠。"
            }, {
                type: "name",
                title: "通訊協定",
                content: "顯示由內部主機所使用的通訊協定。"
            }, {
                type: "name",
                title: "內部 IP 位址",
                content: "顯示內部主機所在的IP位址。"
            }, {
                type: "name",
                title: "內部通訊埠",
                content: "顯示由內部主機本身開啟的內部通訊埠。"
            }, {
                type: "paragraph",
                content: "點選重新整理以更新UPnP伺服器列表。"
            }]
        },
        MODEM: {
            TITLE: "3G/4G 說明",
            CONTENT: [{
                type: "name",
                title: "3G/4G USB 數據機",
                content: "顯示 3G/4G 數據機的狀態。"
            }, {
                type: "name",
                title: "地區",
                content: "當系統成功辨識 USB 數據機和 SIM 卡後，將自動選取並顯示您的地區。如果沒有顯示，請從下拉式功能表選取您的地區。"
            }, {
                type: "name",
                title: "電信業者",
                content: "顯示 3G/4G 網路的 ISP (網際網路服務供應商)。如果沒有自動偵測，請從下拉式功能表選取 ISP。預設撥接號碼和 APN 會隨之自動填入。"
            }, {
                type: "name",
                title: "SIM/UIM PIN",
                content: "如果啟用 SIM/UIM 保護功能，請輸入 PIN 碼。SIM/UIM 保護功能預設為停用。請注意，如果您輸入錯誤的 PIN 碼達到 3 次，SIM/UIM 卡將自動鎖住。您只能從電腦/筆電輸入 PUK 碼，才能解除鎖定。"
            }, {
                type: "name",
                title: "訊息",
                content: "如果啟用 PIN 保護功能，會顯示 SIM/UIM 卡的 PIN 資訊。"
            }, {
                type: "name",
                title: "設定撥號號碼、APN或使用者名稱密碼",
                content: "如果您的 ISP 沒有列在<strong>行動 ISP</strong> 清單中，請勾選這個核取方塊，然後輸入 ISP 提供給您的撥接號碼、APN (存取點名稱)、使用者名稱和密碼。"
            }, {
                type: "name",
                title: "撥號號碼",
                content: "輸入 ISP 提供給您的撥接號碼。"
            }, {
                type: "name",
                title: "APN",
                content: "輸入 ISP 提供給您的 APN (存取點名稱)。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "輸入 ISP 提供給您的使用者名稱和密碼。這些欄位的輸入均區分大小寫。"
            }, {
                type: "name",
                title: "依需求連線",
                content: "在此模式，您可以設定路由器超過「最長閒置時間」後，仍沒有任何網路連線活動時，將自動終止連線，直到有新的網路連線需求時再自動重新連線。"
            }, {
                type: "note",
                title: "註",
                content: "雖然您有指定「最大閒置時間」，但有時會因為有些應用程式在後端保持存取網路網路而無法中斷連線。"
            }, {
                type: "name",
                title: "自動連線",
                content: "啟用這個模式時，網際網路連線會在中斷後自動重新連線。"
            }, {
                type: "name",
                title: "手動連線",
                content: "啟用這個模式時，您可以按一下「連線」或「斷線」按鈕來手動控制網際網路連線。這個模式也支援「最大閒置時間」功能。在「最大閒置時間」欄位中，輸入在閒置達到多長的時間 (分鐘) 後即中斷網路。預設值為 15 分鐘。如果您希望隨時保持連線，請輸入 0 (零)。"
            }, {
                type: "note",
                title: "註",
                content: "雖然您有指定「最大閒置時間」，但有時會因為有些應用程式在後端保持存取網路網路而無法中斷連線。"
            }, {
                type: "paragraph",
                content: "按一下「儲存」按鈕來儲存您的設定。"
            }]
        },
        MODEM_ADVANCED: {
            TITLE: "3G/4G 說明",
            CONTENT: [{
                type: "name",
                title: "3G/4G USB 數據機",
                content: "顯示 3G/4G 數據機的狀態。"
            }, {
                type: "name",
                title: "地區",
                content: "當系統成功辨識 USB 數據機和 SIM 卡後，將自動選取並顯示您的地區。如果沒有顯示，請從下拉式功能表選取您的地區。"
            }, {
                type: "name",
                title: "電信業者",
                content: "顯示 3G/4G 網路的 ISP (網際網路服務供應商)。如果沒有自動偵測，請從下拉式功能表選取 ISP。預設撥接號碼和 APN 會隨之自動填入。"
            }, {
                type: "name",
                title: "SIM/UIM PIN",
                content: "如果啟用 SIM/UIM 保護功能，請輸入 PIN 碼。SIM/UIM 保護功能預設為停用。請注意，如果您輸入錯誤的 PIN 碼達到 3 次，SIM/UIM 卡將自動鎖住。您只能從電腦/筆電輸入 PUK 碼，才能解除鎖定。"
            }, {
                type: "name",
                title: "訊息",
                content: "如果啟用 PIN 保護功能，會顯示 SIM/UIM 卡的 PIN 資訊。"
            }, {
                type: "name",
                title: "設定撥號號碼、APN或使用者名稱密碼",
                content: "如果您的 ISP 沒有列在<strong>行動 ISP</strong> 清單中，請勾選這個核取方塊，然後輸入 ISP 提供給您的撥接號碼、APN (存取點名稱)、使用者名稱和密碼。"
            }, {
                type: "name",
                title: "撥號號碼",
                content: "輸入 ISP 提供給您的撥接號碼。"
            }, {
                type: "name",
                title: "APN",
                content: "輸入 ISP 提供給您的 APN (存取點名稱)。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "輸入 ISP 提供給您的使用者名稱和密碼。這些欄位的輸入均區分大小寫。"
            }, {
                type: "name",
                title: "依需求連線",
                content: "在此模式，您可以設定路由器超過「最長閒置時間」後，仍沒有任何網路連線活動時，將自動終止連線，直到有新的網路連線需求時再自動重新連線。"
            }, {
                type: "note",
                title: "註",
                content: "雖然您有指定「最大閒置時間」，但有時會因為有些應用程式在後端保持存取網路網路而無法中斷連線。"
            }, {
                type: "name",
                title: "自動連線",
                content: "啟用這個模式時，網際網路連線會在中斷後自動重新連線。"
            }, {
                type: "name",
                title: "手動連線",
                content: "啟用這個模式時，您可以按一下「連線」或「斷線」按鈕來手動控制網際網路連線。這個模式也支援「最大閒置時間」功能。在「最大閒置時間」欄位中，輸入在閒置達到多長的時間 (分鐘) 後即中斷網路。預設值為 15 分鐘。如果您希望隨時保持連線，請輸入 0 (零)。"
            }, {
                type: "note",
                title: "註",
                content: "雖然您有指定「最大閒置時間」，但有時會因為有些應用程式在後端保持存取網路網路而無法中斷連線。"
            }, {
                type: "name",
                title: "驗證類型",
                content: "選取驗證類型。預設為「自動」。有些 ISP 要求使用特定驗證類型，請與您的 ISP 確認，或是保留預設設定。"
            }, {
                type: "name",
                title: "自動",
                content: "如果使用「自動」(預設)，路由器會自動判斷 ISP 使用的驗證類型。"
            }, {
                type: "name",
                title: "PAP",
                content: "如果使用 PAP (密碼驗證通訊協定)，路由器會使用兩個交握訊號與對等端進行驗證。如果 ISP 要求使用這個驗證類型，請選取這個選項。"
            }, {
                type: "name",
                title: "CHAP",
                content: "如果使用 CHAP (查問交握式驗證通訊協定)，路由器將使用三個交握訊號向對等端進行驗證，並定期確認對等端的身分。如果 ISP 要求使用這個驗證類型，請選取這個選項。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "預設 MTU (傳輸單元最大值) 大小為 1480 位元組。除非您的 ISP 要求，否則請勿變更。"
            }, {
                type: "name",
                title: " 使用下面DNS 伺服器",
                content: "如果您的 ISP 提供 DNS 伺服器 IP 位址，請勾選這個核取方塊，然後在下面輸入<strong>主要 DNS</strong> 和次要 DNS (選填) IP 位址。否則，ISP 會動態指派 DNS 伺服器。"
            }, {
                type: "name",
                title: "主要 DNS",
                content: "以小數點十進位表示法，輸入 ISP 提供給您的 DNS IP 位址。"
            }, {
                type: "name",
                title: "次要 DNS",
                content: "(選填) 以小數點十進位表示法，輸入 ISP 提供給您的另一個 DNS IP 位址。"
            }, {
                type: "paragraph",
                content: "按一下<strong>儲存</strong>按鈕來儲存您的設定。"
            }]
        },
        DISK_SETTING: {
            TITLE: "設備設定",
            CONTENT: [{
                type: "paragraph",
                content: "設備設定介頁面會顯示所有已連接到路由器USB埠的USB儲存設備的相關資訊。"
            }, {
                type: "name",
                title: "掃描",
                content: "一般來說，路由器會自動掃描任何新接入的USB設備，如果沒有自動掃描或您想要重新整理USB資訊，您也可以手動點選此按鈕。"
            }, {
                type: "name",
                title: "磁碟區",
                content: "顯示USB磁碟區的名稱。"
            }, {
                type: "name",
                title: "容量",
                content: "顯示USB設備的總計容量。"
            }, {
                type: "name",
                title: "剩餘空間",
                content: "顯示USB設備目前可用的剩餘空間。"
            }, {
                type: "name",
                title: "安全移除",
                content: "在您拔除USB磁碟前，先進行安全移除才不會對您的USB磁碟造成損壞。"
            }, {
                type: "paragraph",
                content: "只有在USB磁碟連接於路由器且所有對USB儲存設備的存取動作都停止後，您才可以進行安全移除。"
            }, {
                type: "name",
                title: "啟動",
                content: "燈泡指示預設為啟用，點選一下後會出現紅色禁止圖示，代表不共用此USB磁碟。"
            }, {
                type: "step",
                title: "設定 檔案伺服器",
                content: ["1. 將USB儲存設備連接至路由器的USB埠。", "2. 在設備設定區塊中，新接入的USB設備將會被自動偵測並顯示資訊。如果沒有反應，請點選掃描。", "3. 燈泡指示預設為啟用檔案共用，如果您不想共用此設備，可以點選燈泡圖示，出現紅色禁止圖示後就會停止共用該設備。"]
            }]
        },
        FOLDER_SHARE_ACCOUNT: {
            TITLE: "共用帳號",
            CONTENT: [{
                type: "name",
                title: "帳號",
                content: "您可以選擇使用預設帳號以登入共用檔案與資料夾或使用新帳號並輸入以下資訊建立一個新的使用者帳號。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入15個字以內您想要創立的帳號資訊，不可輸入中文並請注意英文部分的大小寫不同。(使用者名稱必須以英文開頭。)"
            }, {
                type: "name",
                title: "確認密碼",
                content: "請重新輸入一次相同密碼，以確保您的密碼輸入正確，請注意英文部分的大小寫不同。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        FOLDER_SHARE_SETTINGS: {
            TITLE: "共用設定",
            CONTENT: [{
                type: "name",
                title: "網路/媒體 伺服器名稱",
                content: "顯示用以存取已連接的USB儲存設備的名稱。"
            }, {
                type: "name",
                title: "啟用",
                content: "選擇啟用的存取方式。"
            }, {
                type: "name",
                title: "存取方式",
                content: "在此提供三種USB儲存設備的存取方式，只要勾選對應的核取方塊即可開啟該存取方式，可以複數開啟。",
                children: [{
                    type: "name",
                    title: "網路芳鄰",
                    content: "如果啟用，內部網路上的使用者就可以使用指定的IP位址(例如：\\\\192.168.0.1)存取USB磁碟內的資料。"
                }, {
                    type: "name",
                    title: "FTP",
                    content: "如果啟用，內部網路的使用者就可以使用FTP方式(例如：ftp://192.168.0.1:21)對USB儲存設備進行存取。"
                }, {
                    type: "name",
                    title: "FTP(透過網際網路)",
                    content: "如果啟用，FTP將會對所有的網際網路使用者開放，所以即便使用者不在內部網路，也可以透過路由器所取得的實體IP位址進行FTP連線。如果要變更FTP通訊埠請輸入通訊埠號碼並點選儲存。"
                }]
            }, {
                type: "name",
                title: "連接",
                content: "顯示該USB儲存設備用以存取的位址。"
            }, {
                type: "name",
                title: "通訊埠",
                content: "顯示 FTP 伺服器的連接埠號碼。使用預設值 21 或輸入 1024 至 65535 之間的值。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        FOLDER_SHARE_FOLDERS: {
            TITLE: "資料夾共用",
            CONTENT: [{
                type: "name",
                title: "全部共用",
                content: "切換至開以共用所有的檔案和資料夾或保持關閉讓您只共用指定的資料夾。"
            }, {
                type: "name",
                title: "啟用驗證",
                content: "強烈建議啟用驗證，以要求使用者必須輸入正確的使用者名稱與密碼才可存取共用資料夾。"
            }, {
                type: "name",
                title: "資料夾名稱",
                content: "顯示共用資料夾的名稱。"
            }, {
                type: "name",
                title: "資料夾路徑",
                content: "顯示共用資料夾的路徑。"
            }, {
                type: "name",
                title: "媒體共用",
                content: "顯示共用資料夾是否允許媒體共用。"
            }, {
                type: "name",
                title: "磁碟區名稱",
                content: "顯示共用磁碟區的名稱。"
            }, {
                type: "name",
                title: "狀態",
                content: "以亮燈顯示共用資料夾的狀態。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該對應共用資料夾 修改 或 刪除 的項目。"
            }, {
                type: "name",
                title: "瀏覽",
                content: "按此搜索共用資料夾。"
            }, {
                type: "name",
                title: "允許訪客網路存取",
                content: "勾選後將會允許訪客網路存取共用資料夾。"
            }, {
                type: "name",
                title: "啟用驗證",
                content: "勾選後將會要求使用者必須輸入正確的使用者名稱與密碼才可存取共用資料夾。"
            }, {
                type: "name",
                title: "啟用寫入存取",
                content: "勾選後將會允許使用者變更資料夾內容。"
            }, {
                type: "name",
                title: "啟用媒體共用",
                content: "勾選後將會啟用媒體共用。"
            }, {
                type: "name",
                title: "重新整理",
                content: "點選以重新整理共用資料夾列表。"
            }]
        },
        PRINT_SERVER: {
            TITLE: "列印伺服器",
            CONTENT: [{
                type: "name",
                title: "列印伺服器",
                content: "切換至「開」以啟用列印伺服器功能。"
            }, {
                type: "name",
                title: "印表機名稱",
                content: "顯示連接於路由器USB埠的印表機名稱。"
            }]
        },
        OFFLINE_DOWNLOAD: {
            TITLE: "離線下載",
            CONTENT: [{
                type: "paragraph",
                content: "當離線下載啟用，路由器可以下載檔案並且不用隨時保持電腦開機狀態。"
            }, {
                type: "name",
                title: "狀態",
                content: "切換至開以啟用離線下載功能。"
            }, {
                type: "name",
                title: "資料夾路徑",
                content: "選擇資料夾路徑以存放或快取該下載。",
                children: [{
                    type: "note",
                    title: "註",
                    content: "當上傳或下載檔案時，請勿變更資料夾路徑或卸載USB儲存設；否則可能發生某些致命的錯誤。"
                }]
            }, {
                type: "name",
                title: "排程",
                content: "勾選此核取方塊以啟用排程功能，這可以讓您指定下載/上傳檔案的時間區段。"
            }, {
                type: "name",
                title: "在任務完成後保持上傳",
                content: "勾選此核取方塊以在任務完成後保持上傳資料給其他設備。"
            }, {
                type: "name",
                title: "主動下載的最大數量",
                content: "請輸入介於1到10之間的值，以設定活動下載的最大數量。"
            }, {
                type: "name",
                title: "速度限制",
                content: "請為網際網路連線指定最大下載與上傳速度。"
            }, {
                type: "name",
                title: "最大下載速度",
                content: "請輸入介於 1-100000 kB/s的數字，以設定最大下載速度。預設值是1024。"
            }, {
                type: "name",
                title: "最大上傳速度",
                content: "輸入介於1到100000kB/s之間的值以設定最大上傳速度。預設值為128。"
            }, {
                type: "name",
                title: "連線的數量",
                content: "指定最大連線的數量。"
            }, {
                type: "name",
                title: "全球最大連線數量",
                content: "請輸入介於 1-200的數字，以設定全球最大連線數量。預設值是100。"
            }, {
                type: "name",
                title: "每個Torrent的最大已連接端點的數量",
                content: "請輸入介於 1-100的數字，以設定每個Torrent的最大已連接端點的數量。預設值是50。"
            }, {
                type: "name",
                title: "啟用DHT網路",
                content: "啟用此功能以改善尋找端點的效率，如此您就可以增加下載速度。"
            }, {
                type: "name",
                title: "啟用端點交換",
                content: "啟用此功能以改善您的端點群組間的溝通效能，讓您增加下載速度。"
            }, {
                type: "name",
                title: "啟用BitTorrent協定加密",
                content: "啟用此功能，可以在數據傳輸的過程中加強隱私和機密性。"
            }, {
                type: "name",
                title: "aMule伺服器",
                content: "請輸入aMule伺服器的IP位址與通訊埠。只有當路由器連線至伺服器時，才會運行aMule下載工作。"
            }]
        },
        OFFLINE_DOWNLOAD_ITEMS: {
            TITLE: "下載",
            CONTENT: [{
                type: "name",
                title: "項目",
                children: [{
                    type: "name",
                    title: "檔案",
                    content: "顯示下載檔案的名稱與類型。"
                }, {
                    type: "name",
                    title: "速度",
                    content: "顯示目前的下載(或上傳)速度。"
                }, {
                    type: "name",
                    title: "已完成",
                    content: "顯示下載的進度。"
                }, {
                    type: "name",
                    title: "剩餘時間",
                    content: "顯示下載的剩餘時間。"
                }, {
                    type: "name",
                    title: "已連線的端點",
                    content: "顯示下載的已連線的端點。"
                }, {
                    type: "name",
                    title: "狀態",
                    content: "顯示下載的目前狀態(下載、等待、播種、暫停、完成或錯誤)。"
                }]
            }, {
                type: "name",
                title: "增加新的下載",
                children: [{
                    type: "step",
                    content: ["1. 點選 增加。", "2. 選擇下載的來源，是來自於電腦的torrent、來自於USB的torrent或URL。", "3. 為BT選擇torrent地點或為FTP、HTTP與aMule輸入URL。", "4. 點選確定。", "5. 對aMule來說，請在下方「進階 > aMlue伺服器」指定aMule伺服器IP位址與通訊埠。"]
                }]
            }, {
                type: "name",
                title: "刪除下載",
                content: "勾選您想刪除的對應下載的核取方塊，然後點選表格上方的刪除。"
            }, {
                type: "name",
                title: "暫停下載",
                content: "點選您想暫停的對應下載的核取方塊，然後點選表格上方的暫停。"
            }, {
                type: "name",
                title: "恢復下載",
                content: "點選您想恢復的對應下載的核取方塊，然後點選表格上方的恢復。"
            }]
        },
        PARENTAL_CONTROL: {
            TITLE: "家長監護",
            CONTENT: [{
                type: "paragraph",
                content: "透過家長監護，您可以阻止不適當的、明確的惡意網站；您可以限制每天特定時間對某些網站的連線（例如，在做作業的時候Facebook或YouTube）；同時透過這樣的中央控制點保護您家庭網路裡的每個設備免於惡意軟體和網路釣魚的危害。"
            }, {
                type: "name",
                title: "家長監護",
                content: "切換至「開」以啟用家長監護功能。"
            }]
        },
        PARENTAL_CONTROL_DEVICES: {
            TITLE: "家長監護下之設備",
            CONTENT: [{
                type: "name",
                title: "設備名稱",
                content: "顯示目前的家長監護下的所有連線的客戶端設備的名稱。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示目前的家長監護下的所有連線的客戶端設備的MAC位址。"
            }, {
                type: "name",
                title: "網際網路存取時間",
                content: "顯示限制連線的時間段。"
            }, {
                type: "name",
                title: "描述",
                content: "顯示連線的設備的簡要描述。"
            }, {
                type: "name",
                title: "狀態",
                content: "以燈泡圖示顯示該條規則是否生效（啟用或停用）。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示修改或刪除對應設備的選項。"
            }, {
                type: "step",
                title: "新增管制設備",
                content: ["1. 點選 增加。", "2. 點選查看現有的設備，並從連線設備列表中選擇一個目前連線的設備；或手動輸入目前未連線的設備名稱和MAC位址。", "3. 點選網際網路連線時間圖示來指定一個限制使用的時間段。", "4. 請輸入一段簡短的描述到描述欄位。（選填）", "5. 選擇 啟用。", "6. 點選 確定。"]
            }, {
                type: "paragraph",
                content: "您可以在對應項目內點選編輯圖示或刪除圖示，以進行您想要的刪除或編輯操作。"
            }, {
                type: "paragraph",
                content: "若要刪除多項，請勾選或全選後，點選表格上方的刪除。"
            }]
        },
        PARENTAL_CONTROL_RESTRICTION: {
            TITLE: "內容控管",
            CONTENT: [{
                type: "name",
                title: "黑名單",
                content: "只有包含這些關鍵字的網站無法連線，其餘網站可以連線。",
                children: [{
                    type: "paragraph",
                    content: "點選增加新關鍵字可以幫您把關鍵字加入名單中，要刪除關鍵字請點選(-)即可。"
                }]
            }, {
                type: "name",
                title: "白名單",
                content: "只有包含這些關鍵字的網站可以連線，其餘網站無法連線。",
                children: [{
                    type: "paragraph",
                    content: "點選增加新關鍵字可以幫您把關鍵字加入名單中，要刪除關鍵字請點選(-)即可。"
                }]
            }, {
                type: "paragraph",
                content: "點選儲存，儲存您的設定。"
            }]
        },
        PARENTAL_CONTROL_V2: {
            TITLE: "家長監護",
            CONTENT: [{
                type: "paragraph",
                content: "透過使用者設定檔、內容過濾器以及連線限制，家長監護可以為每個家庭成員提供個人化且適當的上網權限。"
            }, {
                type: "step",
                title: "若要套用家長監護到新設備",
                content: ["1. 點選 增加。", "2. 請為設定檔輸入名稱，接著點選「+」以增加在此設定檔下的設備。", "3. 根據您的需求自訂封鎖的內容。所有包含指定關鍵字的網站都將被封鎖。", "4.如果要限制此設定檔花費在連線的總時間，請啟用並指定時間限制。 您還可以使用「就寢時間」設定此設定檔下的設備無法使用網際網路的時間段。", "5. 點選儲存。"]
            }, {
                type: "step",
                title: "若要查看設定檔的詳細網際網路歷史",
                content: ["1. 在洞悉欄中，點選對應的洞悉按鈕。", '2. 如果您想要看到更多記錄，請點選歷史 <span class="ptl-ctr-help-icon history"></span> 按鈕。', '3. 透過點選 <span class="ptl-ctr-help-icon block"></span> 或 <span class="ptl-ctr-help-icon unblock"></span> 按鈕，您可以封鎖或解鎖網站。']
            }, {
                type: "step",
                title: "若要立即停用或啟用網際網路存取",
                content: ['在網際網路存取欄中，點選 <span class="ptl-ctr-help-icon stop"></span> 可以停止對應設定檔的的設備連線至網際網路，而點選 <span class="ptl-ctr-help-icon enable"></span> 則可以再次啟用連線。']
            }]
        },
        QOS: {
            TITLE: "QoS",
            CONTENT: [{
                type: "paragraph",
                content: "QoS可以依照您的需求幫助您優化網際網路流量。在QoS規則列表中，您可以指定設備或應用程式的封包傳輸優先等級。"
            }, {
                type: "name",
                title: "開啟QoS",
                content: "勾選核取方塊以開啟QoS功能。"
            }, {
                type: "name",
                title: "上傳頻寬",
                content: "輸入由網路業者提供的最高上傳速度。"
            }, {
                type: "name",
                title: "下行頻寬",
                content: "輸入由網路業者提供的最高下行速度。"
            }, {
                type: "name",
                title: "高優先級",
                content: "設定一個最高優先級百分比。"
            }, {
                type: "name",
                title: "中優先級",
                content: "設定一個次高優先級百分比。"
            }, {
                type: "name",
                title: "低優先級",
                content: "設定一個最低優先級百分比。"
            }, {
                type: "note",
                title: "註",
                content: "全部加總的優先級百分比最大只能是100%，不可超過。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        QOS_RULE: {
            TITLE: "QoS規則列表",
            CONTENT: [{
                type: "name",
                title: "類型",
                content: "選擇一種類型以增加QoS規則。"
            }, {
                type: "step",
                title: "設定規則給最高、次高、最低優先級的設備",
                content: ["1. 點選 增加。", "2. 選擇「依設備」。", "3. 點選查看現有設備，並請在存取設備列表中選擇一個設備，或者您可以手動輸入設備名稱和MAC位址到設備名稱與MAC位址欄位。", "4. 點選確定。"]
            }]
        },
        QOS_RULE_BY_PHY: {
            TITLE: "",
            CONTENT: [{
                type: "step",
                title: "依實體連接埠設定 高/中/低 優先級規則。",
                content: ["1. 點選 增加。", "2. Select By Physical Port.", "3. Select your desired port.", "4. 點選確定。"]
            }]
        },
        QOS_DATABASE: {
            TITLE: "資料庫升級",
            CONTENT: [{
                type: "name",
                title: "新資料庫檔案",
                content: '點選"瀏覽"可以找新的資料庫檔案，以便您升級資料庫。'
            }, {
                type: "name",
                title: "資料庫版本",
                content: "顯示目前的資料庫版本。"
            }]
        },
        QOS_V2: {
            TITLE: "QoS",
            CONTENT: [{
                type: "paragraph",
                content: "QoS (服務品質)讓您可以針對指定的設備優化網際網路流量，以保證您所需的設備能擁有更快的連線速度。"
            }]
        },
        QOS_GLOBAL_SETTINGS: {
            TITLE: "全局設定",
            CONTENT: [{
                type: "paragraph",
                content: "上傳頻寬 - 請輸入您的ISP所提供的最大上傳頻寬。"
            }, {
                type: "paragraph",
                content: "下載頻寬 - 請輸入您的ISP所提供的最大下載頻寬。"
            }]
        },
        QOS_DEVICE_PRIORITY: {
            TITLE: "設備優先級",
            CONTENT: [{
                type: "paragraph",
                content: "選擇您要的設備以優先化它們並決定要優先化多長時間。"
            }, {
                type: "step",
                title: "若要優先化設備",
                content: ["1. 在列表中找到您要優先化的設備，並開啟優先級開關。", "2. 在時間欄中選擇該設備將會被優先化多長時間。"]
            }]
        },
        SECURITY_FIREWALL: {
            TITLE: "防火牆",
            CONTENT: [{
                type: "name",
                title: "SPI 防火牆",
                content: "封包狀態檢測（Stateful Packet Inspection-SPI）會檢測每個獨立封包中的詳細資料，並追蹤每個連線的狀態，協助路由器防止內部網路遭外界攻擊，只有經過驗證、允許放行的封包才可以通過SPI防火牆進入內部網路。"
            }]
        },
        SECURITY_DOS: {
            TITLE: "DoS 防護",
            CONTENT: [{
                type: "name",
                title: "DoS 防護",
                content: "DoS 防護可以設定保護您的分享器不會受到「TCP-SYN Flood」、「UDP Flood」、「ICMP-Flood」等，Denial of Service (DoS) 攻擊的侵害。"
            }, {
                type: "name",
                title: "ICMP-FLOOD 攻擊防護",
                content: "啟用以防止網際網路控制消息協定（ICMP）洪水攻擊。",
                children: [{
                    type: "name",
                    title: "關",
                    content: "無保護。"
                }, {
                    type: "name",
                    title: "低",
                    content: "低層級的保護但對路由器的效能影響也相對輕微。"
                }, {
                    type: "name",
                    title: "中",
                    content: "中層級的保護但對路由器的效能影響也較為顯著。"
                }, {
                    type: "name",
                    title: "高",
                    content: "高層級的保護但對路由器的效能影響會相當顯著。"
                }]
            }, {
                type: "name",
                title: "UDP-FLOOD攻擊防護",
                content: "啟用以防止使用者資料協定（UDP）洪水攻擊。"
            }, {
                type: "name",
                title: "TCP-SYN-FLOOD 攻擊防護",
                content: "啟用以防止傳輸控制協議-同步（TCP-SYN）洪水攻擊。"
            }, {
                type: "name",
                title: "忽視來自於WAN埠的PING封包",
                content: "啟用以忽視來自WAN埠的ping封包。"
            }, {
                type: "name",
                title: "禁止來自於LAN埠的PING封包",
                content: "啟用以禁止來自LAN埠的ping封包。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SECURITY_LIST: {
            TITLE: "阻擋的DoS主機列表",
            CONTENT: [{
                type: "name",
                title: "阻擋的DoS主機列表",
                content: "列出所有已經被阻擋的DoS攻擊源IP位址和MAC位址。"
            }, {
                type: "step",
                title: "要刪除的項目",
                content: "在主機列表中，選擇您要刪除的項目，然後點選表格上面的刪除。"
            }]
        },
        YANDEX_DNS: {
            TITLE: "Yandex.DNS",
            CONTENT: [{
                type: "paragraph",
                content: "在此頁面您可以設定Yandex.DNS過濾器，這可以協助過濾惡意網站促進設備安全，並且也可以限制兒童設備連線到成人網站。您可以為所有的設備設定一般過濾器或者為每個設備設定個別的過濾器。"
            }, {
                type: "paragraph",
                content: "請訪問dns.yandex.ru以瞭解更多關於Yandex.DNS的服務"
            }, {
                type: "name",
                title: "為所有設備啟用Yandex DNS",
                content: "列出所有已經被阻擋的DoS攻擊源IP位址和MAC位址。"
            }, {
                type: "name",
                title: "停用",
                content: "這代表沒有任何Yandex.DNS過濾器會作用在所有的設備上。"
            }, {
                type: "name",
                title: "基本設定",
                content: "這代表基本的Yandex.DNS過濾器會作用在所有的設備上。"
            }, {
                type: "name",
                title: "安全",
                content: "這代表安全的Yandex.DNS過濾器會作用在所有的設備上。"
            }, {
                type: "name",
                title: "兒童",
                content: "這代表兒童的的Yandex.DNS過濾器會作用在所有的設備上。"
            }]
        },
        YANDEX_DNS_GRID: {
            TITLE: "對特定設備的Yandex DNS規則",
            CONTENT: [{
                type: "name",
                title: "MAC address",
                content: "顯示將會運作Yandex.DNS過濾器設備的MAC位址。"
            }, {
                type: "name",
                title: "控制模式",
                content: "顯示對特定設備所選擇的Yandex.DNS過濾器。"
            }, {
                type: "name",
                title: "描述",
                content: "先是對更好的設備標識的設備描述。"
            }, {
                type: "paragraph",
                content: "若要對特定設備設定特定的Yandex DNS過濾器，請點選增加。您可以從掃描列表中選擇或手動輸入MAC位址。選擇特定的控制模式(基本、安全、兒童)並給予該規則一個簡短的描述。"
            }, {
                type: "paragraph",
                content: "若要增加或刪除項目，請點選表格中的修改或垃圾桶圖示。"
            }]
        },
        ACCESS_CONTROL: {
            TITLE: "存取管理",
            CONTENT: [{
                type: "paragraph",
                content: "存取管理是用來允許或阻止特定的電腦設備和其他設備登入您的網路。當一個設備被阻止，他就只能夠從路由器取得的IP位址，但無法與其他設備通信或連接到網路。"
            }, {
                type: "paragraph",
                content: "要使用存取管理，請啟用此功能，並指定使用黑名單或白名單。如果存取管理是停用（關閉）的狀態，則所有設備(包括黑名單的設備)都會被允許正常連線。"
            }]
        },
        ACCESS_MODE: {
            TITLE: "存取模式",
            CONTENT: [{
                type: "name",
                title: "黑名單",
                content: "只有在黑名單中的設備將被拒絕存取您的網路。"
            }, {
                type: "name",
                title: "白名單",
                content: "只有在白名單中的設備將被允許存取您的網路。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        ACCESS_DEVICE: {
            TITLE: "在線設備",
            CONTENT: [{
                type: "name",
                title: "設備名稱",
                content: "顯示連線設備的名稱。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "顯示連線設備的IP位址。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示連線設備的MAC位址。"
            }, {
                type: "name",
                title: "連線類型",
                content: "顯示連線設備的連接類型。"
            }, {
                type: "step",
                title: "阻擋設備",
                content: "在「在線設備列表」中，對您想阻擋的設備點選該設備對應欄位中的阻擋圖示。"
            }, {
                type: "step",
                title: "阻擋多個設備",
                content: "在「在線設備列表」中，選擇所有你想要阻擋的設備，點選表格上方的阻擋。該設備就被自動增加到黑名單或白名單的列表中。"
            }]
        },
        ACCESS_LIST: {
            TITLE: "在黑/白名單列表中的設備",
            CONTENT: [{
                type: "step",
                title: "黑名單或白名單列出的設備",
                content: ["1. 點選 增加。", "2. 輸入設備名稱。", "3. 進入該設備的MAC位址。", "4. 點選確定。"]
            }, {
                type: "step",
                title: "在黑/白名單表中修改或刪除一個設備",
                content: "在黑/白名單表中，您可以在對應項目內點選編輯圖示或刪除圖示以進行您想要的刪除或編輯操作。"
            }, {
                type: "step",
                title: "在黑/白名單表中刪除複數設備",
                content: "在黑/白名單表中，選擇所有要刪除的設備，點選表格上方的刪除。"
            }]
        },
        IPMAC_BIND_SETTING: {
            TITLE: "設定",
            CONTENT: [{
                type: "paragraph",
                content: "ARP綁定對預防您的內部網路遭受ARP欺騙式攻擊（如：ARP欺騙病毒或網路剪刀手...等）有良好的效果，它可以防止路由器內的ARP對應表（IP位址與MAC位址的對應表）被任意竄改，進而發生如網路斷線的現象。"
            }]
        },
        IPMAC_BIND_ARP: {
            TITLE: "ARP列表",
            CONTENT: [{
                type: "paragraph",
                content: "顯示目前連線的設備的MAC位址和IP位址。"
            }, {
                type: "name",
                title: "ARP 項目數",
                content: "顯示目前連線到此路由器的設備總數。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示連線設備的MAC位址。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "顯示所連線設備的IP位址。"
            }, {
                type: "name",
                title: "綁定",
                content: "指出MAC和IP位址是否綁定。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示綁定選項或從列表中刪除相應的項目。"
            }, {
                type: "note",
                title: "註",
                content: "同一個IP位址不能綁定超過一個的MAC位址。"
            }]
        },
        IPMAC_BIND_LIST: {
            TITLE: "綁定列表",
            CONTENT: [{
                type: "step",
                title: "使用ARP綁定設定設備",
                content: ["1. 點選 增加。", "2. 請輸入設備的MAC位址。", "3. 請入您要綁定給該MAC位址的IP位址。", "4. 請輸入設備的描述（選填）", "5. 選擇 啟用。", "6. 點選 確定。"]
            }, {
                type: "step",
                title: "要修改或刪除項目",
                content: "在綁定列表中，點選您想要修改或刪除的項目對應欄位的修改圖示或刪除圖示。"
            }, {
                type: "step",
                title: "要刪除多個項目",
                content: "在綁定列表中，選擇所有要刪除的項目，點選列表上方的刪除。"
            }]
        },
        IPV6: {
            TITLE: "網際網路",
            CONTENT: [{
                type: "name",
                title: "IPv6",
                content: "選擇啟用(開啟)或停用(關閉)路由器的IPv6功能"
            }, {
                type: "title",
                title: "網際網路連線類型: 固定 IP"
            }, {
                type: "name",
                title: "固定 IP",
                content: "如果您使用固定IPv6位址協議，請選擇這個。"
            }, {
                type: "name",
                title: "IPv6 位址/預設閘道/主要DNS/次要DNS",
                content: "輸入網路業者(ISP)提供給您的參數。"
            }, {
                type: "name",
                title: "MTU 大小",
                content: "一般常見的乙太網路MTU （Maximum Transmit Unit）數值為1500。通常您不需要修改這個數值，除非您的ISP有特別需求！"
            }, {
                type: "title",
                title: "網際網路連線類型: 浮動 IP"
            }, {
                type: "name",
                title: "浮動 IP",
                content: "如果您使用浮動IPv6位址協議，請選擇這個。"
            }, {
                type: "name",
                title: "IPv6 位址/主要DNS/次要DNS",
                content: "這些參數由ISP的DHCPv6伺服器自動設定。"
            }, {
                type: "name",
                title: "更新",
                content: "點選此按鈕以獲得由ISP的DHCPv6伺服器分配的新IPv6參數。"
            }, {
                type: "name",
                title: "釋放",
                content: "點選此按鈕以釋放由ISP的DHCPv6伺服器分配的舊IPv6參數。"
            }, {
                type: "name",
                title: "取得IPv6 位址",
                content: "根據ISP的要求，選擇取得非暫時性IPv6位址或者IPv6前綴授權。"
            }, {
                type: "name",
                title: "前綴授權",
                content: "選擇啟用由ISP的DHCPv6伺服器取得前綴授權或停用以手動指定一個位址前綴。在LAN端的使用者將會以此前綴生成一個IPv6位址。"
            }, {
                type: "name",
                title: "DNS 位址",
                content: "選擇從ISP自動取得或者使用下列DNS位址。如果選擇使用下列DNS位址，請手動填入由ISP提供的DNS位址。"
            }, {
                type: "name",
                title: "主要 DNS/次要 DNS",
                content: "手動填入參數或從ISP自動取得。"
            }, {
                type: "title",
                title: "網際網路連線類型: PPPoE"
            }, {
                type: "name",
                title: "PPPoE",
                content: "如果您使用PPPoEv6，請選擇這個，並且提供使用者名稱和密碼。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "輸入由ISP提供的使用者名稱和密碼。"
            }, {
                type: "name",
                title: "IPv6 位址",
                content: "會由ISP的DHCPv6伺服器自動提供，當您輸入使用者名稱和密碼後請點選連線。"
            }, {
                type: "name",
                title: "DNS 位址",
                content: "選擇從ISP自動取得或者使用下列DNS位址。如果選擇使用下列DNS位址，請手動填入由ISP提供的DNS位址。"
            }, {
                type: "name",
                title: "取得IPv6 位址",
                content: "請根據ISP的要求，選擇取得非暫時性IPv6位址或者IPv6前綴授權。如果您選擇由ISP指定，您需要手動填入由網路業者指定的IPv6位址。如果選擇取得非暫時性IPv6位址或者IPv6前綴授權，ISP的DHCPv6伺服器會自動提供IPv6位址。"
            }, {
                type: "name",
                title: "前綴授權",
                content: "選擇啟用由ISP的DHCPv6伺服器取得前綴授權或停用以手動指定一個位址前綴。在LAN端的使用者將會以此前綴生成一個IPv6位址。"
            }, {
                type: "name",
                title: "連線",
                content: "點選這個按鈕以連線到網路。"
            }, {
                type: "name",
                title: "斷線",
                content: "點選這個按鈕以中斷網路連線。"
            }, {
                type: "title",
                title: "網路連線類型：6to4 通道"
            }, {
                type: "name",
                title: "6to4 通道",
                content: "如果ISP使用6to4協議分配位址，請選擇這個。"
            }, {
                type: "name",
                title: "IPv4 位址/IPv4 子網掩碼/IPv4 預設閘道/通道位址",
                content: "當你點選連線後這些參數會由WAN埠的IPv4資訊自動提供。"
            }, {
                type: "name",
                title: "使用以下DNS伺服器",
                content: "勾選此核取方塊以手動輸入ISP所提供的主要、次要DNS伺服器。"
            }, {
                type: "name",
                title: "連線",
                content: "點選這個按鈕以連線到網路。"
            }, {
                type: "name",
                title: "斷線",
                content: "點選這個按鈕以中斷網路連線。"
            }, {
                type: "title",
                title: "網際網路連線類型：Pass-Through (橋接)"
            }, {
                type: "paragraph",
                content: "如果網路業者使用Pass-Through (橋接)協議 ，請選擇這個，且不需要填任何參數和設定。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        IPV6_LAN: {
            TITLE: "區域網路(LAN)",
            CONTENT: [{
                type: "paragraph",
                content: "除了Pass-Through (橋接)以外，其他6種類型的網際網路連線都需要IPv6設定。"
            }, {
                type: "name",
                title: "分配類型",
                content: "根據網路業者(ISP)情況選擇合適類型。",
                children: [{
                    type: "name",
                    title: "DHCPv6",
                    content: "自動取得IP位址到LAN埠。",
                    children: [{
                        type: "name",
                        title: "位址前綴",
                        content: "輸入ISP提供的位址前綴。"
                    }, {
                        type: "name",
                        title: "釋放時間",
                        content: "指IP位址保持有效的時間。建議保持預設 86400秒即可，除非ISP要求改變。"
                    }, {
                        type: "name",
                        title: "位址",
                        content: "由ISP的 DHCPv6伺服器自動分配的IP位址。"
                    }]
                }, {
                    type: "name",
                    connector: " ",
                    title: "SLAAC+Stateless DHCP",
                    children: [{
                        type: "name",
                        title: "位址前綴",
                        content: "輸入ISP提供的位址前綴。"
                    }, {
                        type: "name",
                        title: "位址",
                        content: "由ISP的 DHCPv6伺服器自動分配的IP位址。"
                    }]
                }, {
                    type: "name",
                    connector: " ",
                    title: "SLAAC+RDNSS",
                    children: [{
                        type: "name",
                        title: "位址前綴",
                        content: "輸入ISP提供的位址前綴。"
                    }, {
                        type: "name",
                        title: "位址",
                        content: "由ISP的 DHCPv6伺服器自動分配的IP位址。"
                    }]
                }]
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        IPV6_MAC_CLONE: {
            TITLE: "複製MAC位址",
            CONTENT: [{
                type: "name",
                title: "使用預設的 MAC 位址",
                content: "不改變路由器預設的MAC位址，一般ADSL/VDSL用戶請選擇此項目。"
            }, {
                type: "name",
                title: "使用目前電腦的 MAC 位址",
                content: "會將目前操作電腦的MAC位址複製到路由器的WAN端，當您的ISP僅對您的電腦加入放行白名單時，請選擇此項。"
            }, {
                type: "name",
                title: "使用自訂的 MAC 位址",
                content: "您可以手動輸入ISP所要求的特定MAC位址。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        TIME_SETTING: {
            TITLE: "時間設定",
            CONTENT: [{
                type: "step",
                title: "自動同步時間",
                content: ["1. 在設定時間欄位，選擇從網際網路自動取得。", "2. 從下拉式選單中選取您的當地時區。", "3. 在 NTP 伺服器I欄位，輸入您要的NTP 伺服器IP位址或網域名稱。", "4. 在 NTP 伺服器II欄位，輸入第二NTP 伺服器IP位址或網域名稱。(選填)", "5. 點選取得。", "6. 點選儲存。"]
            }, {
                type: "step",
                title: "手動設定日期和時間",
                content: ["1. 在設定時間欄位，選擇手動。", "2. 輸入目前的日期。", "3. 輸入目前的時間 (使用24小時格式，例如：16:00:00是下午4點)。", "4. 點選儲存。"]
            }]
        },
        TIME_SETTING_DAYLIGHT: {
            TITLE: "日光節約時間",
            CONTENT: [{
                type: "step",
                title: "設定日光節約時間",
                content: ["1. 選擇啟用日光節約時間。", "2. 當日光節約時間在您的當地時區開始時，選擇正確的開始日期和時間。", "3. 當日光節約時間在您的當地時區結束時，選擇正確的結束日期和時間。", "4. 點選儲存。"]
            }]
        },
        DIGNOSTIC: {
            TITLE: "診斷",
            CONTENT: [{
                type: "paragraph",
                content: "此路由器提供了Ping和追蹤路由工具來幫助您找出網路連線問題。 Ping工具可以發送封包到目標IP位址或網域名稱，並記錄結果，如：發送/接收封包的數量，以及往返時間。而追蹤路由工具可以發送封包到目標IP位址或網域名稱，並顯示到達目的地途中的節點的數量和時間。"
            }, {
                type: "paragraph",
                content: "你可以透過IP位址或網域名ping和追蹤路由當地設備，如：google.com, yahoo.com等。"
            }, {
                type: "step",
                title: "使用Ping診斷",
                content: ["1. 輸入目標IP位址或網域名稱。", "2. 點選箭頭圖示，開啟進階選單並指定Ping次數與Ping封包大小。(選填)", "3. 點選開始。"]
            }, {
                type: "step",
                title: "使用追蹤路由診斷",
                content: ["1. 輸入目標IP位址或網域名稱。", "2. 點選箭頭圖標示，開啟進階選單並在追蹤路由最大TTL（生存時間）欄位指定節點數量(要到達)。預設值為20。（選填）", "3. 點選開始。"]
            }]
        },
        FIRMWARE: {
            TITLE: "韌體升級",
            CONTENT: [{
                type: "paragraph",
                content: '在升級路由器的韌體前，您需要從<a class="link" target="blank" href="http://www.tp-link.com/tw/Support/">TP-Link Support</a> 網站下載最新更新的韌體到您的電腦。'
            }, {
                type: "step",
                title: "重要提示：為了防止升級失敗，請注意以下幾點：",
                content: ["確保最新的韌體檔案與設備版本符合（如圖所示在韌體升級頁）。", "請確保您的路由器和電腦之間穩定的連接。不建議以無線方式升級韌體。", "在路由器的韌體升級前，請確保您已經移除所有已連線的USB存儲設備，以防止資料遺失。", "備份路由器的設定。", "韌體升級過程中不可以關閉路由器。"]
            }, {
                type: "step",
                title: "升級路由器韌體",
                content: ["1. 點選瀏覽。", "2. 尋找並選擇已下載的韌體檔案。", "3. 點選「升級」。"]
            }, {
                type: "paragraph",
                content: "升級過程需要幾分鐘的時間才能完成。在升級過程中請不要關閉路由器。"
            }]
        },
        BACKUP: {
            TITLE: "備份",
            CONTENT: [{
                type: "paragraph",
                content: "強烈建議您備份目前的設定，以防復原會將您的設定恢復為以前的狀態，另外恢復原廠設定後所有的設定會清空，因此您也可能會需要使用此設定備份。"
            }, {
                type: "paragraph",
                content: "點選備份將您目前的設定儲存到您的電腦。請確保將備份檔案儲存到您可以搜尋到的安全位置。"
            }]
        },
        RESTORE: {
            TITLE: "復原",
            CONTENT: [{
                type: "step",
                title: "使用備份檔復原設定",
                content: ["1. 點選瀏覽。", "2. 尋找並選擇備份檔案。", "3. 點選復原。"]
            }]
        },
        FACTORY: {
            TITLE: "恢復原廠預設值",
            CONTENT: [{
                type: "paragraph",
                content: "點選恢復原廠預設值，將您的路由器還原到原廠預設數值。"
            }, {
                type: "step",
                title: "註",
                content: ["1. 恢復原廠預設值將會刪除本設備目前所有的設定值並回到出廠狀態。屆時若要重新登入本設備管理界面，請使用預設的登入使用者名稱與密碼─「admin」進行登入。", "2. 在備份或恢復原廠預設值時，請絕對不要關閉本設備電源。"]
            }]
        },
        REBOOT: {
            TITLE: "重啟排程",
            CONTENT: [{
                type: "paragraph",
                content: "重啟排程功能可以清除快取資料以增進路由器的運作效能。您可以手動重啟路由器或設定讓它規律地重新啟動。"
            }, {
                type: "step",
                title: "手動重啟",
                content: ["點選重新啟動，並請等待幾分鐘，路由器會重新開機。"]
            }, {
                type: "step",
                title: "若要設定重新啟動時間的排程",
                content: ["1. 啟用重新啟動排程", "2. 透過在「重新啟動時間」與「重複」欄位中指定參數，設定您要何時與多常讓路由器重新啟動。", "3. 點選儲存。"]
            }]
        },
        ADMIN_ACCOUNT: {
            TITLE: "帳號管理",
            CONTENT: [{
                type: "paragraph",
                content: "本頁面允許您變更您用以的登入 使用者名稱、密碼 並且可以設定一個電子郵件信箱，讓您可以進行密碼復原。"
            }, {
                type: "name",
                title: "舊密碼",
                content: "請輸入您目前的密碼。"
            }, {
                type: "name",
                title: "新密碼",
                content: "請輸入您的新密碼。"
            }, {
                type: "name",
                title: "確認新密碼",
                content: "請再次輸入新密碼。"
            }, {
                type: "note",
                title: "註",
                content: "如果您決定變更目前的用以登入路由器管理介面的密碼，建議在安全的地方寫下這些新的登入資訊。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        ADMIN_RECOVERY: {
            TITLE: "密碼復原",
            CONTENT: [{
                type: "name",
                title: "啟用 密碼復原",
                content: "非常建議您啟用 密碼復原 功能，這將會您遺失或遺忘的使用者名稱與密碼透過E-mail傳送。"
            }, {
                type: "name",
                title: "寄件人",
                content: "請輸入正確的寄件人信箱。"
            }, {
                type: "name",
                title: "收件人",
                content: "請輸入正確的收件人信箱。"
            }, {
                type: "name",
                title: "SMTP 伺服器",
                content: "請輸入正確的SMTP伺服器位址，信件將透過此伺服器寄出。"
            }, {
                type: "name",
                title: "啟用驗證",
                content: "如果您的外寄信件，寄件前需要驗證的話，請勾選 啟用驗證 並填入SMTP伺服器所需的使用者名稱與密碼(請注意英文大小寫)。一般常見狀況下，您必須勾選此項目。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        ADMIN_LOCAL: {
            TITLE: "本地管理",
            CONTENT: [{
                type: "paragraph",
                content: "此功能可以讓本地設備存取並管理路由器。"
            }, {
                type: "name",
                id: "local_management_https",
                title: "透過HTTPS進行本地管理",
                content: "如果您想同時使用HTTP與HTTPS存取路由器，請啟用「透過HTTPS進行本地管理」。如果您只想透過HTTP存取路由器，則請保持停用。"
            }, {
                type: "name",
                title: "允許所有LAN連線的設備存取",
                content: "切換至開啟以允許所有LAN連線的設備存取或保持它關閉以僅讓指定的設備進行管理。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示限制存取設備的MAC位址。"
            }, {
                type: "name",
                title: "描述",
                content: "顯示限制存取設備的描述。"
            }, {
                type: "name",
                title: "狀態",
                content: "限制存取設備目前的狀態(啟用 或 停用)。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該限制存取設備對應 修改 或 刪除 的項目。"
            }, {
                type: "step",
                title: "增加 使用者端設備 到列表",
                content: ["1. 點選 增加。", "2. 點選查看現有設備，選擇已存在的設備或直接輸入MAC位址到MAC位址欄位。", "3. 輸入設備的描述。", "4. 選擇 啟用。", "5. 點選 確定。"]
            }, {
                type: "step",
                title: "在列表值中修改或刪除 設備",
                content: "在表格內您可以點選對應欄位的編輯圖示或刪除圖示以進行您想要的操作。"
            }, {
                type: "step",
                title: "刪除複數設備",
                content: "勾選所有您想刪除的規則，並點選列表上方的 刪除 按鈕。"
            }]
        },
        ADMIN_REMOTE_WITHOUT_HTTPS: {
            TITLE: "遠端管理",
            CONTENT: [{
                type: "paragraph",
                content: "您可以在此設定開啟路由器的遠端管理功能，如此即使管理者不在內部網路，也可以透過網際網路管理此路由器。"
            }, {
                type: "name",
                title: "停用 遠端管理",
                content: "選擇此項目將會停用遠端管理。"
            }, {
                type: "name",
                title: "啟用 全部設備遠端管理",
                content: "選擇此項則所有設備皆可進行遠端管理，並請填寫網頁管理通訊埠之數值即可。"
            }, {
                type: "name",
                title: "啟用 指定設備遠端管理",
                content: "選擇此項則只有特定設備可進行遠端管理，並請填寫網頁管理通訊埠與遠端管理 IP 位址之數值。"
            }, {
                type: "name",
                title: "網頁管理通訊埠",
                content: "請輸入通訊埠號碼，範圍在 1024 到 65535 之間，此為用以存取路由器網頁管理介面之通訊埠，預設值與常見值為8080，一般狀況下我們也建議您採用此數值。"
            }, {
                type: "name",
                title: "遠端管理 IP 位址",
                content: "請輸入正確的IP位址或IP範圍，這些IP位址將被允許存取此路由器。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        ADMIN_REMOTE: {
            TITLE: "遠端管理",
            CONTENT: [{
                type: "paragraph",
                content: "您可以在此設定開啟路由器的遠端管理功能，如此即使管理者不在內部網路，也可以透過網際網路管理此路由器。"
            }, {
                type: "paragraph",
                id: "admin_remote_step_title",
                content: "若要設定遠端管理"
            }, {
                type: "paragraph",
                id: "admin_remote_step1",
                content: "1. 勾選核取方塊以啟用遠端管理功能。"
            }, {
                type: "paragraph",
                id: "admin_remote_step2",
                content: "2. 維持HTTPS與HTTP通訊埠為預設設定。"
            }, {
                type: "paragraph",
                id: "admin_remote_step3",
                content: "3. 選擇以決定哪個遠端設備可以遠端存取路由器：",
                children: [{
                    type: "name",
                    title: "所有設備",
                    content: "所有的遠端設備都可以存取路由器。"
                }, {
                    type: "name",
                    title: "指定的設備",
                    content: "請輸入可以存取路由器的遠端設備的IP位址。"
                }]
            }, {
                type: "paragraph",
                id: "admin_remote_step4",
                content: "4. 點選儲存。"
            }, {
                type: "paragraph",
                content: "現在您可以透過顯示在「進行管理的網址」的網址遠端管理路由器"
            }, {
                type: "note",
                title: "註",
                content: "當您遠端存取上面的網址時，如果跳出警告視窗，請點選信任(或類似選項)以繼續進行。"
            }]
        },
        LED_CONTROL_SETTINGS: {
            TITLE: "LED控制",
            CONTENT: [{
                type: "paragraph",
                content: "一旦啟用夜間模式，LED燈將會每天在指定的期間內關閉，這不會影響路由器的效能。"
            }, {
                type: "step",
                title: "啟用夜間模式",
                content: ["1. 選擇啟用夜間模式。", "2. 指定要關閉LED燈的時間期間。", "3. 點選儲存。"]
            }]
        },
        SYSTEM_LOG: {
            TITLE: "系統日誌",
            CONTENT: [{
                type: "paragraph",
                content: "系統日誌會紀錄路由器的動作，熟練的網頁專門人員可以透過這些日誌判斷路由器異常原因，一般而言這是發生特殊問題時需要擷取給予技術支援人員進行判讀之作用，且本功能具有自動發送電子郵件能力，可以將路由日誌排程寄送。"
            }, {
                type: "name",
                title: "類型",
                content: "選擇要顯示的紀錄類型。"
            }, {
                type: "name",
                title: "層級",
                content: "選擇要顯示的紀錄層級。"
            }, {
                type: "name",
                title: "重新整理",
                content: "點選此圖示以更新系統日誌。"
            }, {
                type: "name",
                title: "全部刪除",
                content: "點選此圖示以刪除所有的系統日誌。"
            }, {
                type: "name",
                title: "儲存日誌",
                content: "點選此按鈕以儲存所有的系統日誌到您現在的電腦上。"
            }, {
                type: "name",
                title: "郵件設定",
                content: "點選此按鈕為系統日誌設定電子郵件。"
            }, {
                type: "step",
                title: "為系統日誌進行電子郵件設定",
                content: ["1. 點選 郵件設定。", "2. 寄件人 - 請輸入正確的寄件人信箱。", "3. 收件人 - 請輸入正確的收件人信箱。", "4. SMTP 伺服器 - 請輸入正確的SMTP伺服器位址，信件將透過此伺服器寄出。", {
                    content: "5. 啟用驗證 - 如果您的外寄信件，寄件前需要驗證的話，請勾選 啟用驗證 並填入SMTP伺服器所需的使用者名稱與密碼(請注意英文大小寫)。一般常見狀況下，您必須勾選此項目。",
                    children: [{
                        type: "name",
                        title: "使用者名稱",
                        content: "請輸入SMTP伺服器所要求之使用者名稱。(請注意英文大小寫)"
                    }, {
                        type: "name",
                        title: "無線連線密碼",
                        content: "請輸入SMTP伺服器所要求之密碼。(請注意英文大小寫)"
                    }]
                }, {
                    content: "6. 啟用自動寄信 - 選擇此項目則路由器會依您之設定，自動寄送系統日誌到您的指定信箱。",
                    children: [{
                        type: "paragraph",
                        content: "在每天的特定時間寄送系統日誌，請以24小時制輸入 時(HH) 與 分(MM) ，例如：16:00是下午四點。"
                    }, {
                        type: "paragraph",
                        content: "排定每隔固定時間寄送系統日誌，請輸入間隔的小時數。"
                    }]
                }, "7. 點選 儲存。"]
            }]
        },
        TRAFFIC_STATISTIC: {
            TITLE: "流量統計",
            CONTENT: [{
                type: "paragraph",
                content: "您可以在此看到所有的區域網路內電腦的網路使用流量統計，包含總流量與最近使用流量。"
            }, {
                type: "name",
                title: "流量統計",
                content: "切換至「開」以顯示統計資訊。"
            }]
        },
        TRAFFIC_STATISTIC_LIST: {
            TITLE: "流量統計列表",
            CONTENT: [{
                type: "name",
                title: "IP 位址/MAC 位址",
                content: "顯示該使用設備的IP位址與MAC位址。"
            }, {
                type: "name",
                title: "總計封包數",
                content: "顯示該使用設備從開始連線到目前的總計傳輸封包。"
            }, {
                type: "name",
                title: "總計位元組",
                content: "顯示該使用設備從開始連線到目前的總計傳輸位元組。"
            }, {
                type: "name",
                title: "目前封包數",
                content: "顯示該使用設備目前的傳輸封包數量。"
            }, {
                type: "name",
                title: "目前位元組",
                content: "顯示該使用設備目前的傳輸位元組數量。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該流量統計設備對應 重置(歸零) 或 刪除 的項目。"
            }, {
                type: "name",
                title: "重新整理",
                content: "更新流量統計資訊。"
            }, {
                type: "name",
                title: "全部重置",
                content: "點選此按鈕可以將所有的流量統計資訊歸零。"
            }, {
                type: "name",
                title: "全部刪除",
                content: "點選此按鈕可以將所有的流量統計資訊刪除。"
            }]
        },
        SYSTEM_PARA_WIRELESS: {
            TITLE: "無線網路 2.4GHz/5GHz",
            CONTENT: [{
                type: "name",
                title: "Beacon 間隔",
                content: "可輸入 40 到 1000 毫秒之間的數值，是路由器用以同步無線網路的廣播封包的機制，預設值為 100 毫秒。"
            }, {
                type: "name",
                title: "RTS 臨界值",
                content: "可以輸入1 到 2346 之間的數值，數字越大無線網路傳輸效能越好，但是在收訊品質不佳的地方，減少數值可以有助維持訊號穩定性，預設值為最大值。"
            }, {
                type: "name",
                title: "DTIM 間隔",
                content: "可輸入數值在1到15毫秒之間，預設值為1。"
            }, {
                type: "name",
                title: "群組金鑰更新週期",
                content: "預設值為0，以秒計算，最少為30，0代表不更新。"
            }, {
                type: "name",
                title: "WMM 功能",
                content: "WMM功能可以保證無線網路的影音傳輸封包獲得高優先級傳輸，藉以提升級時視訊或影音串流的穩定性。預設值為啟用，並且強烈建議不要取消勾選(停用)。"
            }, {
                type: "name",
                title: "Short GI 功能",
                content: "預設值為啟用，可以加強無線網路效能。"
            }, {
                type: "name",
                title: "AP隔離功能",
                content: "如果你向要嚴格限制無線網路設備彼此之間的連接，可以勾選此項目，但這些無線網路設備仍可以存取內部網路資料。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_WDS: {
            TITLE: "2.4GHz/5GHz WDS",
            CONTENT: [{
                type: "name",
                title: "啟用 WDS橋接",
                content: "啟用 WDS (Wireless Distribution System) 橋接功能可以讓AP以無線的方式連線到另一台AP並藉此擴大無線網路範圍，請注意！我們並不保證此WDS功能可與其他品牌AP成功進行橋接。如果啟用，請依照下列步驟設定。"
            }, {
                type: "name",
                title: "SSID (被橋接端)",
                content: "請輸入您主要被橋接的那台AP端的SSID，您可以使用 搜尋AP 功能找到可以連接的基地台。"
            }, {
                type: "name",
                title: "搜尋AP",
                content: "您可以搜尋目前可以連結的無線基地台。（但我們不保證可以跟其他品牌的無線基地台相容）"
            }, {
                type: "name",
                title: "MAC 位址 (被橋接端)",
                content: "建議您點選  搜尋AP 按鈕直接連結代入。(會與MAC 位址 (被橋接端)一起代入)"
            }, {
                type: "name",
                title: "WDS 模式",
                content: "WDS 模式:Auto, WDS1 or WDS2."
            }, {
                type: "name",
                title: "安全性",
                content: "請選擇被橋接AP的正確的安全性類型， 無安全性、WPA-PSK/WPA2-PSK 或 WEP。如果您透過搜尋AP功能選擇被橋接AP，那本欄位也會被自動帶入。",
                children: [{
                    type: "name",
                    title: "無線連線密碼",
                    content: "只有安全性類型是 WPA-PSK/WPA2-PSK 或 WEP時才可編輯本欄位。請輸入您想使用的無線連線密碼。"
                }, {
                    type: "name",
                    title: "驗證類型",
                    content: "只有在安全性類型是WEP的情況下才可以設定本項目，可以選擇(自動、開放系統、共用金鑰)等驗證類型。"
                }, {
                    type: "name",
                    title: "WEP金鑰格式",
                    content: "如果安全性類型是WEP的話，可以選擇使用ASCII碼或十六進位碼。"
                }]
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_WPS: {
            TITLE: "WPS",
            CONTENT: [{
                type: "paragraph",
                content: "勾選啟用WPS核取方塊，並點選儲存以啟用WPS功能。WPS 功能可以幫助您快速增加新的設備到既有網路。如果新的設備支援WPS(Wi-Fi Protected Setup)，並具有WPS按鈕， 您可以透過按下這個按鈕並在兩分鐘內按下另一設備的按鈕，即可將其加入既有網路。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_NAT: {
            TITLE: "NAT",
            CONTENT: [{
                type: "name",
                title: "NAT",
                content: "勾選啟用NAT核取方塊，並點選儲存以啟用NAT (Network Address Translation) 功能。"
            }, {
                type: "note",
                title: "註",
                content: "當NAT被停用後，NAT導向的功能將會失效。"
            }, {
                type: "name",
                title: "NAT 加速",
                content: "勾選啟用NAT核取方塊，並點選儲存以保證您的路由器具有最佳的輸送量(throughput)。"
            }, {
                type: "note",
                title: "註",
                content: "當NAT加速啟用後，QoS 與流量統計將會被自動停用。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_DOS: {
            TITLE: "DoS 防護等級設定",
            CONTENT: [{
                type: "paragraph",
                content: "DoS防護等級保護您的分享器不會受到「TCP-SYN Flood」、「UDP Flood」、「ICMP-Flood」等攻擊的侵害。"
            }, {
                type: "name",
                title: "ICMP-FLOOD 封包等級",
                content: "請輸入 5 到 7200 ICMP 封包的數值，當外界流入封包超過此一數值時，將會立即觸發ICMP-FLOOD保護機制。"
            }, {
                type: "name",
                title: "UDP-FLOOD 封包等級",
                content: "請輸入 5 到 7200 UDP 封包的數值，當外界流入封包超過此一數值時，將會立即觸發UDP-FLOOD保護機制。"
            }, {
                type: "name",
                title: "TCP-FLOOD 封包等級",
                content: "請輸入 5 到 7200 TCP-SYN 封包的數值，當外界流入封包超過此一數值時，將會立即觸發TCP-SYN-FLOOD保護機制。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_DUPLEX: {
            TITLE: "雙工",
            CONTENT: [{
                type: "name",
                title: "雙工",
                content: "請從下拉示選單中選擇一個雙工類型。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_PARA_LED: {
            TITLE: "LED",
            CONTENT: [{
                type: "name",
                title: "啟用",
                content: "勾選這個核取方塊，即可在夜間模式下關閉 LED，但不影響路由器的效能。"
            }, {
                type: "name",
                title: "夜間模式期間",
                content: "指定要套用夜間模式的時段。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        SYSTEM_DEBUG_MODE: {
            TITLE: "系統日誌",
            CONTENT: [{
                type: "name",
                title: "除錯模式",
                content: "啟用以觀看路由器不正常的狀態日誌，請在我們的技術支持指導下使用此模式（除錯模式僅用於除錯使用）。"
            }]
        },
        OPEN_VPN: {
            TITLE: "OpenVPN",
            CONTENT: [{
                type: "paragraph",
                content: "透過OpenVPN，當您不在家時您可以使用網際網路安全地存取家中網路。若要使用VPN服務您需要設定動態DNS服務(建議)或分配固定IP到路由器的WAN埠。並且系統時間必須與網際網路同步。"
            }, {
                type: "name",
                title: "啟用 VPN 伺服器",
                content: "勾選這個核取方塊，即可啟用 OpenVPN 伺服器。"
            }, {
                type: "name",
                title: "服務類型",
                content: "選取 OpenVPN 伺服器的通訊協定：UDP 或 TCP。"
            }, {
                type: "name",
                title: "服務埠",
                content: "請輸入介於1024-65535之間的通訊埠號碼。預設與常見服務通訊埠是1194。"
            }, {
                type: "name",
                title: "VPN 子網路/網路遮罩",
                content: "輸入 OpenVPN 伺服器可租用給用戶端的 IP 位址範圍。"
            }, {
                type: "name",
                title: "用戶端存取",
                content: "選取 OpenVPN 用戶端的存取類型。",
                children: [{
                    type: "name",
                    title: "僅限家庭網路",
                    content: "用戶端只能存取家庭網路。該用戶端預設的路由不會被改變。"
                }, {
                    type: "name",
                    title: "網際網路和家庭網路",
                    content: "當您出國，有地理限制時，用戶端可以存取家庭網路與網際網路站臺或服務。該用戶端的預設路由將會被變更。"
                }]
            }]
        },
        OPEN_VPN_CERTIFICATE: {
            TITLE: "憑證",
            CONTENT: [{
                type: "paragraph",
                content: ["將憑證用於資訊，並將 VPN 連線的身分識別用於遠端電腦。", "按一下來產生新憑證。"]
            }]
        },
        OPEN_VPN_CONF: {
            TITLE: "組態檔",
            CONTENT: [{
                type: "paragraph",
                content: ["遠端用戶端將會使用該設定檔以存取您的路由器。", "按一下這個按鈕來儲存可用於新增 VPN 連線的 OpenVPN 組態檔。"]
            }]
        },
        OPEN_VPN_GUIDE: {
            TITLE: "VPN 用戶端安裝指南",
            CONTENT: [{
                type: "step",
                title: "連接用戶端設備到OpenVPN伺服器：",
                content: [{
                    type: "paragraph",
                    content: "在您設定OpenVPN伺服器之前，請設定動態DNS服務(建議)或分配固定IP到路由器的WAN埠。並且確認NAT設定的外部通訊埠沒有此服務通訊埠，然後系統時間必須與網際網路同步。"
                }, "1. 選擇啟用VPN伺服器。", "2. 設定OpenVPN伺服器參數(服務類型、服務通訊埠、用戶端存取與VPN子網路/網路遮罩)並點選儲存。", "3. 點選匯出以儲存設定檔。", '4. 在用戶端設備上，從<a class="link" href="http://openvpn.net/index.php/download/community-downloads.html">http://openvpn.net/index.php/download/community-downloads.html</a>下載並安裝OpenVPN用戶端工具。', "官方支援平台包含：Windows、Mac OSX以及Linux。", "5. 啟動OpenVPN用戶端工具並使用儲存的設定檔增加新的VPN連線，以連接用戶端設備到VPN伺服器。"]
            }, {
                type: "note",
                title: "註",
                content: '若要深入了解 OpenVPN 用戶端，請瀏覽網站：<a class="link" href="http://openvpn.net/index.php/open-source/documentation/howto.html#quick">http://openvpn.net/index.php/open-source/documentation/howto.html#quick</a>'
            }]
        },
        PPTP_VPN: {
            TITLE: "PPTP VPN",
            CONTENT: [{
                type: "paragraph",
                content: "透過PPTP VPN，當您不在家時您可以使用網際網路簡單而快速地存取家中網路。某些ISP可能會阻擋VPN服務。若要使用VPN服務您需要設定動態DNS服務(建議)或分配固定IP到路由器的WAN埠。並且系統時間必須與網際網路同步。"
            }, {
                type: "name",
                title: "啟用 VPN 伺服器",
                content: "勾選這個核取方塊，即可啟用 PPTP VPN 伺服器。"
            }, {
                type: "name",
                title: "用戶端 IP 位址",
                content: "輸入 PPTP VPN 伺服器可租用給用戶端的 IP 位址範圍 (最多 10 個用戶端)。"
            }, {
                type: "name",
                title: "允許Samba(網路芳鄰)存取",
                content: "選擇以讓您的VPN用戶端去存取您本地的Samba伺服器。"
            }, {
                type: "name",
                title: "允許NetBIOS穿透",
                content: "選擇以讓您的VPN用戶端可以使用NetBIOS名稱去存取您的Samba伺服器。"
            }, {
                type: "name",
                title: "運許未加密連線",
                content: "選擇以讓未加密連線至您的VPN伺服器。"
            }]
        },
        VPN_CLIENT_ENABLE: {
            TITLE: "啟用VPN用戶端",
            CONTENT: [{
                type: "paragraph",
                content: "選擇以啟用VPN用戶端"
            }]
        },
        VPN_CLIENT_PPTP: {
            TITLE: "VPN類型：PPTP",
            CONTENT: [{
                type: "paragraph",
                content: "如果您連線至PPTP VPN伺服器並被提供了使用者名稱、密碼、以及伺服器的IP位址/網域名稱，請選擇此類型。"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入伺服器的使用者名稱與密碼。"
            }, {
                type: "name",
                title: "VPN伺服器IP/網域名稱",
                content: "請輸入VPB伺服器的IP位址或網域名稱。"
            }, {
                type: "name",
                title: "描述",
                content: "請輸入此項目的描述。"
            }, {
                type: "name",
                title: "加密",
                content: "請選擇一個伺服器的安全性加密類型。"
            }]
        },
        VPN_CLIENT_L2TP: {
            TITLE: "VPN類型：L2TP",
            CONTENT: [{
                type: "paragraph",
                content: "如果您連線至L2TP VPN伺服器並被提供了使用者名稱、密碼以及伺服器的IP位址/網域名稱，請選擇此類型。"
            }]
        },
        VPN_CLIENT_L2TP_SEC: {
            TITLE: "VPN類型：L2TP/IPsec",
            CONTENT: [{
                type: "paragraph",
                content: "如果您連線至L2TP/IPsec VPN伺服器並被提供了使用者名稱、密碼以及伺服器的IP位址/網域名稱，請選擇此類型。"
            }, {
                type: "name",
                title: "Ipsec預先共用金鑰",
                content: "請輸入伺服器的預先共用金鑰。"
            }]
        },
        VPN_CLIENT_OPEN: {
            TITLE: "VPN類型：OpenVPN",
            CONTENT: [{
                type: "paragraph",
                content: "如果您連線至OpenVPN伺服器並被提供了使用者名稱、密碼以及伺服器的設定檔案，請選擇此類型。"
            }, {
                type: "name",
                title: "匯入設定檔案",
                content: "匯入伺服器的設定檔案"
            }]
        },
        PPTP_ACCOUNT_LIST: {
            TITLE: "帳號列表",
            CONTENT: [{
                type: "paragraph",
                content: "此列表顯示可以被遠端用戶端用以連線到PPTP VPN伺服器的帳號。"
            }, {
                type: "step",
                title: "新增PPTP VPN帳號",
                content: ["1. 點選 增加。", "2. 輸入使用者名稱和密碼，向 PPTP VPN 伺服器驗證用戶端。", "3. 點選 確定。"]
            }, {
                type: "step",
                title: "修改或刪除已存在的帳號",
                content: "在列表中，點選您想要修改或刪除的對應帳號的編輯圖示或垃圾桶圖示。"
            }]
        },
        PPTP_VPN_GUIDE: {
            TITLE: "VPN 用戶端安裝指南",
            CONTENT: [{
                type: "step",
                title: "連接用戶端設備到PPTP VPN伺服器：",
                content: [{
                    type: "paragraph",
                    content: "在您設定PPTP VPN伺服器之前，請設定動態DNS服務(建議)或分配固定IP到路由器的WAN埠。並且確認NAT設定的外部通訊埠沒有使用1723服務通訊埠，然後系統時間必須與網際網路同步。"
                }, "1. 選擇啟用VPN伺服器。", "2. 設定PPTP VPN伺服器參數並點選儲存。", "3. 在用戶端設備上，創建PPTP VPN連線。官方支援平台包含：Windows、Mac OSX以及Linux。", "4. 啟動PPTP VPN程式，增加新的連線並輸入已註冊的DDNS服務的網域名稱或分配給WAN埠的固定IP，以連接用戶端設備到PPTP VPN伺服器。"]
            }]
        },
        VPN_CONNNECTION: {
            TITLE: "VPN連接",
            CONTENT: [{
                type: "paragraph",
                content: "這個頁面會顯示目前連線至 OpenVPN 的用戶端，以及 路由器上代管的 PPTP VPN 伺服器。"
            }, {
                type: "paragraph",
                content: "按一下「減號」圖示，即可中斷該用戶端。"
            }]
        },
        BASIC_NETWORK_INTEREST: {
            TITLE: "網際網路",
            CONTENT: [{
                type: "paragraph",
                content: "顯示網際網路資訊。"
            }]
        },
        BASIC_NETWORK_ROUTER: {
            TITLE: "路由器",
            CONTENT: [{
                type: "title",
                title: "無線網路 2.4GHz/5GHz"
            }, {
                type: "name",
                title: "SSID",
                content: "顯示目前無線網路的名稱(2.4GHz/5GHz)。"
            }, {
                type: "name",
                title: "頻道",
                content: "顯示目前無線網路使用的頻道(2.4GHz/5GHz)。"
            }, {
                type: "name",
                title: "MAC",
                content: "顯示目前無線網路的MAC位址(2.4GHz/5GHz)。"
            }, {
                type: "title",
                title: "訪客網路 2.4GHz/5GHz"
            }, {
                type: "name",
                title: "狀態",
                content: "顯示無線訪客網路(2.4GHz/5GHz) 目前是開啟或關閉。"
            }, {
                type: "name",
                title: "SSID",
                content: "顯示訪客網路的無線網路名稱"
            }]
        },
        BASIC_NETWORK_CLIENTS: {
            TITLE: "有線/無線使用者",
            CONTENT: [{
                type: "name",
                title: "名稱",
                content: "顯示連線到此路由器的使用者的名稱。"
            }, {
                type: "name",
                title: "IP 位址",
                content: "顯示連線到此路由器的使用者的IP位址。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示連線到此路由器的使用者的MAC位址。"
            }]
        },
        BASIC_NETWORK_PRINTER: {
            TITLE: "印表機",
            CONTENT: [{
                type: "name",
                title: "名稱",
                content: "顯示連接到路由器USB埠的印表機的名稱"
            }]
        },
        BASIC_NETWORK_USB: {
            TITLE: "USB磁碟",
            CONTENT: [{
                type: "name",
                title: "USB磁碟",
                content: "顯示目前連接到路由器的USB磁碟的品牌。"
            }, {
                type: "name",
                title: "總計",
                content: "顯示USB磁碟的總計空間。"
            }, {
                type: "name",
                title: "可用",
                content: "顯示USB磁碟的剩餘可用空間。"
            }]
        },
        BASIC_NETWORK_ONEMESH: {
            TITLE: "Mesh設備",
            CONTENT: [{
                type: "name",
                title: "名稱",
                content: "顯示連接至路由器的Mesh設備名稱。"
            }, {
                type: "name",
                title: "型號",
                content: "顯示Mesh設備的產品型號。"
            }, {
                type: "name",
                title: "狀態",
                content: "顯示Mesh設備的連線狀態。"
            }, {
                type: "name",
                title: "位置",
                content: "顯示Mesh設備的位置。"
            }, {
                type: "paragraph",
                content: '您可以點選 <span class="one-mesh-modify-icon"></span> 以修改設備資訊。'
            }]
        },
        BASIC_INTERNET: {
            TITLE: "網際網路",
            CONTENT: [{
                type: "name",
                id: "auto_detect_button",
                title: "自動偵測",
                content: "讓路由器自動偵測您目前的網路連線類型，但這並非100%準確，有誤差時請以ISP提供之設定值為準。"
            }, {
                type: "note",
                id: "auto_detect_note",
                title: "註",
                content: "如果您不確定網際網路連線類型是哪一種，您可以使用自動偵測或者向您的網路業者(ISP)請求協助。"
            }, {
                type: "title",
                title: "網際網路連線類型: 固定 IP"
            }, {
                type: "name",
                title: "IP 位址/子網路遮罩/預設閘道/主要 DNS/次要 DNS",
                content: "請輸入ISP所提供的資訊。"
            }, {
                type: "title",
                title: "網際網路連線類型: 浮動 IP"
            }, {
                type: "name",
                title: "請勿複製 MAC位址 /複製目前電腦的 MAC 位址",
                content: "請根據您的ISP所提供之資訊選擇。"
            }, {
                type: "title",
                title: "網際網路連線類型: PPPoE"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入由ISP所提供的使用者名稱、密碼。請注意英文大、小寫之不同。"
            }, {
                type: "title",
                title: "網際網路連線類型: L2TP/PPTP"
            }, {
                type: "name",
                title: "使用者名稱/密碼",
                content: "請輸入由ISP所提供的使用者名稱、密碼。請注意英文大、小寫之不同。"
            }, {
                type: "name",
                title: "第二連線 (浮動 IP 或 固定 IP)",
                children: [{
                    type: "name",
                    title: "浮動 IP",
                    content: "如果IP 位址與子網路遮罩由ISP自動提供，請選擇此項目。"
                }, {
                    type: "name",
                    title: "固定 IP",
                    content: "如果您的ISP業者提供您一組IP參數(IP位址、子網路遮罩、預設閘道、DNS伺服器位址)填寫，請選擇此類型並填寫入對應欄位。"
                }]
            }, {
                type: "name",
                title: "VPN伺服器IP/網域名稱",
                content: "請輸入ISP提供的伺服器IP位址或網域名稱。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        BASIC_WIRELESS_SMART_CONNECT: {
            TITLE: "智慧連線",
            CONTENT: [{
                type: "paragraph",
                content: "勾選這個核取方塊，即可啟用智慧連線。這項功能會根據實際條件，為裝置指派最佳的無線頻段以平衡網路需求，所以有助於裝置執行得更快。"
            }]
        },
        BASIC_WIRELESS: {
            TITLE: "無線網路設定",
            CONTENT: [{
                type: "name",
                title: "啟用無線網路功能",
                content: "勾選核取方塊以啟用2.4GHz /5GHz 無線網路功能。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "您可以使用預設的無線網路名稱 (SSID) ，也可以自行更換為其他名稱，最長32個字並請勿輸入中文。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "如果您要隱藏2.4GHz /5GHz 無線網路名稱 (SSID)，請勾選核取方塊。"
            }, {
                type: "name",
                title: "無線連線密碼",
                content: "請輸入8-63位ASCII碼密碼，或者8-64位十六進位碼密碼(0-9, a-f, A-F)。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        BASIC_DEVICE_SETTINGS: {
            TITLE: "設備設定",
            CONTENT: [{
                type: "paragraph",
                content: "設備設定介頁面會顯示所有已連接到路由器USB埠的USB儲存設備的相關資訊。"
            }, {
                type: "name",
                title: "掃描",
                content: "一般來說，路由器會自動掃描任何新接入的USB設備，如果沒有自動掃描或您想要重新整理USB資訊，您也可以手動點選此按鈕。"
            }, {
                type: "name",
                title: "磁碟區",
                content: "顯示USB磁碟區的名稱。"
            }, {
                type: "name",
                title: "容量",
                content: "顯示USB設備的總計容量。"
            }, {
                type: "name",
                title: "剩餘空間",
                content: "顯示USB設備目前可用的剩餘空間。"
            }, {
                type: "name",
                title: "安全移除",
                content: "在您拔除USB磁碟前，先進行安全移除才不會對您的USB磁碟造成損壞。",
                children: [{
                    type: "paragraph",
                    content: "只有在USB磁碟連接於路由器且所有對USB儲存設備的存取動作都停止後，您才可以進行安全移除。"
                }]
            }, {
                type: "name",
                title: "狀態",
                content: "燈泡指示預設為啟用，點選一下後會出現紅色禁止圖示，代表不共用此USB磁碟。"
            }]
        },
        BASIC_SHARING_SETTINGS: {
            TITLE: "共用設定",
            CONTENT: [{
                type: "name",
                title: "網路/媒體 伺服器名稱",
                content: "顯示用以存取已連接的USB儲存設備的名稱。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        BASIC_FOLDER_SHARING: {
            TITLE: "資料夾共用",
            CONTENT: [{
                type: "name",
                title: "全部共用",
                content: "切換至開以共用所有的檔案和資料夾或保持關閉讓您只共用指定的資料夾。"
            }, {
                type: "name",
                title: "啟用驗證",
                content: "強烈建議啟用驗證，以要求使用者必須輸入正確的使用者名稱與密碼才可存取共用資料夾。"
            }, {
                type: "name",
                title: "資料夾名稱",
                content: "顯示共用資料夾的名稱。"
            }, {
                type: "name",
                title: "資料夾路徑",
                content: "顯示共用資料夾的路徑。"
            }, {
                type: "name",
                title: "媒體共用",
                content: "顯示共用資料夾是否允許媒體共用。"
            }, {
                type: "name",
                title: "磁碟區名稱",
                content: "顯示共用磁碟區的名稱。"
            }, {
                type: "name",
                title: "狀態",
                content: "以亮燈顯示共用資料夾的狀態。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示該對應共用資料夾 修改 或 刪除 的項目。"
            }, {
                type: "name",
                title: "增加",
                content: "點選此按鈕以增加一個新項目。"
            }, {
                type: "name",
                title: "刪除",
                content: "點選此按鈕以移除已選擇的項目。"
            }, {
                type: "name",
                title: "瀏覽",
                content: "按此搜索共用資料夾。"
            }, {
                type: "name",
                title: "允許訪客網路存取",
                content: "勾選後將會允許訪客網路存取共用資料夾。"
            }, {
                type: "name",
                title: "啟用驗證",
                content: "勾選後將會要求使用者必須輸入正確的使用者名稱與密碼才可存取共用資料夾。"
            }, {
                type: "name",
                title: "啟用寫入存取",
                content: "勾選後將會允許使用者變更資料夾內容。"
            }, {
                type: "name",
                title: "啟用媒體共用",
                content: "勾選後將會啟用媒體共用。"
            }, {
                type: "name",
                title: "重新整理",
                content: "點選以重新整理共用資料夾列表。"
            }]
        },
        BASIC_PRINT_SERVER: {
            TITLE: "列印伺服器",
            CONTENT: [{
                type: "name",
                title: "列印伺服器",
                content: "切換至「開」以啟用列印伺服器功能。"
            }, {
                type: "name",
                title: "印表機名稱",
                content: "顯示連接於路由器USB埠的印表機名稱。"
            }]
        },
        BASIC_PARENTAL_CONTROL: {
            TITLE: "家長監護",
            CONTENT: [{
                type: "name",
                title: "家長監護",
                content: "切換上啟用家長監護功能。默認情況下，該功能被禁用。"
            }]
        },
        BASIC_PARENTAL_DEVICE: {
            TITLE: "家長監護下之設備",
            CONTENT: [{
                type: "paragraph",
                content: "顯示家長監護下之設備列表"
            }, {
                type: "name",
                title: "設備名稱",
                content: "顯示目前的家長監護下的所有連線的客戶端設備的名稱。"
            }, {
                type: "name",
                title: "MAC 位址",
                content: "顯示目前的家長監護下的所有連線的客戶端設備的MAC位址。"
            }, {
                type: "name",
                title: "網際網路存取時間",
                content: "顯示限制連線的時間段。"
            }, {
                type: "name",
                title: "描述",
                content: "顯示連線的設備的簡要描述。"
            }, {
                type: "name",
                title: "狀態",
                content: "以燈泡圖示顯示該條規則是否生效（啟用或停用）。"
            }, {
                type: "name",
                title: "修改",
                content: "顯示修改或刪除對應設備的選項。"
            }, {
                type: "step",
                title: "新增管制設備",
                content: ["1. 點選 增加。", "2. 點選查看現有的設備，並從連線設備列表中選擇一個目前連線的設備；或手動輸入目前未連線的設備名稱和MAC位址。", "3. 點選網際網路連線時間圖示來指定一個限制使用的時間段。", "4. 請輸入一段簡短的描述到描述欄位。（選填）", "5. 選擇 啟用。", "6. 點選 確定。"]
            }, {
                type: "paragraph",
                content: "您可以在對應項目內點選編輯圖示或刪除圖示，以進行您想要的刪除或編輯操作。"
            }, {
                type: "paragraph",
                content: "若要刪除多項，請勾選或全選後，點選表格上方的刪除。"
            }]
        },
        BASIC_GUEST_NETWORK: {
            TITLE: "訪客網路",
            CONTENT: [{
                type: "paragraph",
                content: "訪客網路可以讓您創建一個獨立無線網路環境(不同的SSID與密碼)且訪客無法連線到您的私人內部網路，以維持您內部網路的安全性。"
            }, {
                type: "name",
                title: "允許訪客可以互相連線",
                content: "勾選此核取方塊可以讓連線到此的訪客，彼此可以透過此訪客網路互相溝通。"
            }, {
                type: "name",
                title: "允許訪客可以存取我的本地網路",
                content: "勾選選此核取方塊可以讓連線到此的訪客，可以連線到內部網路共用電腦或儲存設備的資料檔案，也可以共用網路印表機。"
            }, {
                type: "name",
                title: "啟用訪客網路",
                content: "勾選選此核取方塊可以啟用訪客網路功能。"
            }, {
                type: "name",
                title: "無線網路名稱 (SSID)",
                content: "請您設定32字以內的訪客無線網路名稱 (SSID) ，請勿輸入中文。"
            }, {
                type: "name",
                title: "隱藏 SSID",
                content: "如果您要隱藏訪客無線網路名稱 (SSID)，請勾選核取方塊。"
            }, {
                type: "name",
                id: "pwd_mode",
                title: "密碼更新間隔",
                content: "請選訪客網路密碼的更新間隔。"
            }, {
                type: "name",
                title: "無線連線密碼",
                content: "可以使用隨機生成的密碼，或者請輸入8-63位ASCII碼密碼，或者8-64位十六進位碼密碼(0-9, a-f, A-F)。"
            }, {
                type: "paragraph",
                content: "點選 儲存 以儲存您的設定。"
            }]
        },
        BASIC_ACCOUNT_LOGIN: {
            TITLE: "TP-Link 雲端",
            CONTENT: [{
                type: "paragraph",
                content: "TP-Link 雲端服務可以讓您即時監控您的網路，或當您不在家時可以透過網際網路存取並管理您的設備並提供其他進階功能。強烈建議您登入並綁定您的雲端帳號到您的雲端設備。"
            }]
        },
        ACCOUNT_INFO: {
            TITLE: "帳號資訊",
            CONTENT: [{
                type: "paragraph",
                content: "顯示您的TP-Link ID資訊。點選編輯圖示後，您可以編輯該帳號資訊。"
            }]
        },
        DEVICE_INFO: {
            TITLE: "設備資訊",
            CONTENT: [{
                type: "paragraph",
                content: "顯示您的設備資訊，包含雲端帳號管理中的設備。"
            }]
        },
        BOUND_ACCOUNT: {
            TITLE: "綁定的帳號",
            CONTENT: [{
                type: "paragraph",
                content: "此表格顯示所有目前綁定到該設備的雲端帳號。"
            }, {
                type: "step",
                title: "若要綁定使用者帳號",
                content: ["1. 點選「綁定」。", "2. 輸入您想要綁定的已註冊的電子郵件。", "3. 點選儲存。"]
            }]
        },
        "": ""
    }
})(jQuery);