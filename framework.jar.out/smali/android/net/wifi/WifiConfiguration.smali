.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$ProxySettings;,
        Landroid/net/wifi/WifiConfiguration$IpAssignment;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    }
.end annotation


# static fields
.field public static final CMCC_AP_PRIORITY:I = 0x400000

.field public static final CMCC_EDU_AP_PRIORITY:I = 0x200000

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final HIGHEST_AP_PRIORITY:I = 0x800000

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final NORMAL_HIGH_AP_PRIORITY:I = 0x100000

.field public static final WAPI_ASCII_PASSWORD:I = 0x0

.field public static final WAPI_HEX_PASSWORD:I = 0x1

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wapiAsCertVarName:Ljava/lang/String; = "wapi_as_cert"

.field public static final wapiCertIndexVarName:Ljava/lang/String; = "cert_index"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "psk_key_type"

.field public static final wapiUserCertVarName:Ljava/lang/String; = "wapi_user_cert"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public disableReason:I

.field public eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public hiddenSSID:Z

.field public identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public linkProperties:Landroid/net/LinkProperties;

.field public networkId:I

.field public password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public status:I

.field public wapiAsCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 718
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "eap"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 111
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase2"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 113
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 115
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "anonymous_identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 117
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "password"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 119
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "client_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 121
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "private_key"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 123
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "ca_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 127
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "pcsc"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 129
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase1"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 131
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "eapol_flags"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 135
    const/16 v5, 0xb

    new-array v5, v5, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v11

    const/4 v6, 0x5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 449
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 450
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 451
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 452
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 453
    iput-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 454
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 455
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 456
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 457
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 458
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 459
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 460
    new-array v5, v11, [Ljava/lang/String;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 461
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 462
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v8, v5, v2

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 465
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 466
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 467
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 469
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 470
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 472
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_1
    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 473
    sget-object v5, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 474
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 475
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 643
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "eap"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 111
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "phase2"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 113
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "identity"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 115
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "anonymous_identity"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 117
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "password"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 119
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "client_cert"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 121
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "private_key"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 123
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "ca_cert"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 127
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "pcsc"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 129
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "phase1"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 131
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "eapol_flags"

    invoke-direct {v1, p0, v2, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 135
    const/16 v1, 0xb

    new-array v1, v1, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 644
    if-eqz p1, :cond_2

    .line 645
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 646
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 647
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 648
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 649
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 650
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 652
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 654
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 658
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 659
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 660
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 663
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 664
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 665
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 666
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 667
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 668
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 669
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 670
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 672
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 673
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 675
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 676
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 677
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 679
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .parameter "src"

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 599
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 600
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_0
    return-object v2
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 103
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 105
    .end local p0
    :cond_0
    return-object p0
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 607
    const/4 v0, -0x1

    .line 609
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 612
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 617
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 620
    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 622
    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 624
    goto :goto_0

    .line 627
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 628
    goto :goto_0

    .line 629
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    const/4 v0, 0x6

    goto :goto_0

    .line 634
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v13, -0x1

    const/16 v14, 0xa

    .line 479
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v9, sbuf:Ljava/lang/StringBuilder;
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v11, :cond_2

    .line 481
    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_0
    :goto_0
    const-string v11, "ID: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " BSSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PRIO: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    const-string v11, " KeyMgmt:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 490
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 491
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_3

    .line 493
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 482
    .end local v5           #k:I
    :cond_2
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 483
    const-string v11, "- DSBLE: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 495
    .restart local v5       #k:I
    :cond_3
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 499
    :cond_4
    const-string v11, " Protocols:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/4 v7, 0x0

    .local v7, p:I
    :goto_3
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 501
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 502
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 504
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 506
    :cond_6
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 510
    :cond_7
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    const-string v11, " AuthAlgorithms:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const/4 v0, 0x0

    .local v0, a:I
    :goto_5
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 513
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 514
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_9

    .line 516
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 518
    :cond_9
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 522
    :cond_a
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const-string v11, " PairwiseCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/4 v8, 0x0

    .local v8, pc:I
    :goto_7
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    .line 525
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 526
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_c

    .line 528
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 530
    :cond_c
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 534
    :cond_d
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    const-string v11, " GroupCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v3, 0x0

    .local v3, gc:I
    :goto_9
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v3, v11, :cond_10

    .line 537
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 538
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_f

    .line 540
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 542
    :cond_f
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 546
    :cond_10
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PSK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 548
    const/16 v11, 0x2a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    :cond_11
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v11, :cond_12

    .line 553
    const-string v11, " WapiAsCert: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_12
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v11, :cond_13

    .line 557
    const-string v11, " WapiUserCert: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_13
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    if-eq v11, v13, :cond_14

    .line 561
    const-string v11, " WapiCertIndex: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    :cond_14
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-eq v11, v13, :cond_15

    .line 565
    const-string v11, " WapiPskType: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    :cond_15
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v6, :cond_17

    aget-object v2, v1, v4

    .line 569
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 573
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #value:Ljava/lang/String;
    :cond_17
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IP assignment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Proxy settings: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 683
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 690
    .local v4, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v4           #wepKey:Ljava/lang/String;
    :cond_0
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-boolean v5, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 696
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 697
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 698
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 699
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 701
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 710
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 693
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .local v0, arr$:[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 703
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 704
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 712
    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 715
    return-void
.end method