.class public Lcom/android/server/TwService;
.super Landroid/net/wifi/ITwManager$Stub;
.source "TwService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TwService$1;,
        Lcom/android/server/TwService$MyHanlder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwService"


# instance fields
.field private SIMData:Ljava/lang/String;

.field private USIMData:Ljava/lang/String;

.field private final actiontype:Ljava/lang/String;

.field private final actiontypeTag:Ljava/lang/String;

.field private final logonsessid:Ljava/lang/String;

.field private final logonsessidTag:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTwSateTracker:Landroid/net/wifi/TwStateTracker;

.field private myHanlder:Lcom/android/server/TwService$MyHanlder;

.field private final passWord:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private final urlTag:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private final userName:Ljava/lang/String;

.field private final wlanacname:Ljava/lang/String;

.field private final wlanacnameTag:Ljava/lang/String;

.field private final wlanuserip:Ljava/lang/String;

.field private final wlanuseripTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/TwStateTracker;)V
    .locals 2
    .parameter "context"
    .parameter "twSateTracker"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/ITwManager$Stub;-><init>()V

    .line 63
    const-string v0, "name=\"wlanacname\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->wlanacnameTag:Ljava/lang/String;

    .line 64
    const-string v0, "name=\"wlanuserip\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->wlanuseripTag:Ljava/lang/String;

    .line 65
    const-string v0, "name=\"actiontype\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->actiontypeTag:Ljava/lang/String;

    .line 66
    const-string v0, "name=\"logonsessid\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->logonsessidTag:Ljava/lang/String;

    .line 67
    const-string v0, "action=\""

    iput-object v0, p0, Lcom/android/server/TwService;->urlTag:Ljava/lang/String;

    .line 68
    const-string v0, "wlanacname"

    iput-object v0, p0, Lcom/android/server/TwService;->wlanacname:Ljava/lang/String;

    .line 69
    const-string v0, "wlanuserip"

    iput-object v0, p0, Lcom/android/server/TwService;->wlanuserip:Ljava/lang/String;

    .line 70
    const-string v0, "actiontype"

    iput-object v0, p0, Lcom/android/server/TwService;->actiontype:Ljava/lang/String;

    .line 71
    const-string v0, "logonsessid"

    iput-object v0, p0, Lcom/android/server/TwService;->logonsessid:Ljava/lang/String;

    .line 72
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/server/TwService;->userName:Ljava/lang/String;

    .line 73
    const-string v0, "PWD"

    iput-object v0, p0, Lcom/android/server/TwService;->passWord:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/server/TwService$MyHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TwService$MyHanlder;-><init>(Lcom/android/server/TwService;Lcom/android/server/TwService$1;)V

    iput-object v0, p0, Lcom/android/server/TwService;->myHanlder:Lcom/android/server/TwService$MyHanlder;

    .line 94
    iput-object p1, p0, Lcom/android/server/TwService;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    .line 96
    iget-object v0, p0, Lcom/android/server/TwService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TwService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->SIMData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TwService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->USIMData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getGsmAuth(Ljava/lang/String;)V
    .locals 4
    .parameter "rand"

    .prologue
    .line 148
    const-string v1, "TwService"

    const-string v2, "[getGsmAuth] "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->doSimAuth(Ljava/lang/String;)Landroid/telephony/SimAuthCnf;

    move-result-object v0

    .line 151
    .local v0, sim:Landroid/telephony/SimAuthCnf;
    const-string v1, "TwService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage] GET_GSM_AUTH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v1}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    .line 154
    return-void
.end method

.method public getImsi()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 111
    const-string v2, "TwService"

    const-string v3, "[getImsi]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, imsi:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v1, mStringBuffer:Ljava/lang/StringBuffer;
    const-string v2, "TwService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIdentity] imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 118
    const-string v2, "@wlan.mnc0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/4 v2, 0x5

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v2, ".mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v2, "TwService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage] GET_IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v2}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v2

    invoke-static {v2, v0}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    .line 128
    return-void
.end method

.method public getSimType()V
    .locals 4

    .prologue
    .line 131
    const-string v1, "TwService"

    const-string v2, "[getSimType]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v1, "TwService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage] GET_SIM_TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, cardType:I
    iget-object v1, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 141
    :goto_0
    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v1}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    .line 144
    const-string v1, "TwService"

    const-string v2, "[getSimType] sendEmptyMessage end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTwState()Landroid/net/wifi/TwState;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v0

    return-object v0
.end method

.method public getUmtsAuth(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 157
    const-string v3, "TwService"

    const-string v4, "[getUmtsAuth]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_4

    .line 161
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, tmpAr:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/UsimAuthCnf;

    move-result-object v1

    .line 163
    .local v1, usim:Landroid/telephony/UsimAuthCnf;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v2, usimsb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/telephony/UsimAuthCnf;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v3, v1, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_0
    iget-object v3, v1, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_1
    iget-object v3, v1, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_2
    iget-object v3, v1, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_3
    const-string v3, "TwService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleMessage] GET_UMTS_AUTH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v3, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v3}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    .line 181
    .end local v0           #tmpAr:[Ljava/lang/String;
    .end local v1           #usim:Landroid/telephony/UsimAuthCnf;
    .end local v2           #usimsb:Ljava/lang/StringBuffer;
    :cond_4
    const-string v3, "TwService"

    const-string v4, "[getUmtsAuth] sendEmptyMessage end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public reSetTwState()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v1, Landroid/net/wifi/TwState;->IDLE:Landroid/net/wifi/TwState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 277
    return-void
.end method

.method public twWpaInit()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/net/wifi/TwNative;->TwInit()I

    move-result v0

    return v0
.end method

.method public twWpaUnInit()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/net/wifi/TwNative;->TwUnInit()I

    move-result v0

    return v0
.end method

.method public webPortalLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 185
    const-string v0, "TwService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[webPortalLogin] userName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public webPortalLogout()V
    .locals 3

    .prologue
    .line 248
    const-string v0, "TwService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[webPortalLogout] TwState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method
