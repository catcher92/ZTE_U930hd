.class public final Lcom/android/internal/telephony/OperatorList;
.super Ljava/lang/Object;
.source "OperatorList.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "OperatorList"

.field private static mOperatorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "operatorNumeric"

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static initOperatorName()V
    .locals 4

    .prologue
    const v3, 0x10400bb

    .line 46
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41201"

    const-string v2, "AWCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41220"

    const-string v2, "TDCA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42402"

    const-string v2, "ETISALAT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42202"

    const-string v2, "OMAN MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42203"

    const-string v2, "Nawras"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40001"

    const-string v2, "AZERCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40002"

    const-string v2, "BAKCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40004"

    const-string v2, "Azerfon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41001"

    const-string v2, "MOBILINK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41004"

    const-string v2, "CMPak"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42505"

    const-string v2, "Jawwal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42601"

    const-string v2, "BATELCO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42602"

    const-string v2, "Zain Bahrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51402"

    const-string v2, "TIMOR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51502"

    const-string v2, "Globe Telecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51503"

    const-string v2, "Smart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51505"

    const-string v2, "Digitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28201"

    const-string v2, "GEOCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28202"

    const-string v2, "MAGTICOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40101"

    const-string v2, "KAR-TEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40102"

    const-string v2, "KCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45005"

    const-string v2, "SK-TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45002"

    const-string v2, "KT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45008"

    const-string v2, "KT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43701"

    const-string v2, "Sky Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45601"

    const-string v2, "CamGSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45602"

    const-string v2, "Hello Axiata"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42701"

    const-string v2, "Qtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41902"

    const-string v2, "ZAIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45708"

    const-string v2, "Millicom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45702"

    const-string v2, "ETL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41503"

    const-string v2, "MTC-LIBANON"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41501"

    const-string v2, "MIC 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "47201"

    const-string v2, "Dhiraagu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50216"

    const-string v2, "DiGi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50212"

    const-string v2, "Maxis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50217"

    const-string v2, "Maxis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50219"

    const-string v2, "Celcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50213"

    const-string v2, "Celcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42899"

    const-string v2, "MobiCom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "47001"

    const-string v2, "GrameenPhone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "47003"

    const-string v2, "BANGLALINK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "47007"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "47002"

    const-string v2, "Robi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42901"

    const-string v2, "NDCL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "44010"

    const-string v2, "NTT DOCOMO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "44020"

    const-string v2, "SOFTBANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "44000"

    const-string v2, "E-mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28001"

    const-string v2, "CYTA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42001"

    const-string v2, "STC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42003"

    const-string v2, "Mobily"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41302"

    const-string v2, "Dialog Telekom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41301"

    const-string v2, "Mobitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41303"

    const-string v2, "Etisalat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43602"

    const-string v2, "TCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43601"

    const-string v2, "TCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43604"

    const-string v2, "Balilon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43605"

    const-string v2, "TACOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52001"

    const-string v2, "AIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52018"

    const-string v2, "DTAC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52099"

    const-string v2, "TrueMove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28603"

    const-string v2, "AVEA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28601"

    const-string v2, "Turkcell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28602"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43801"

    const-string v2, "BCTI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52811"

    const-string v2, "DST Communications"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52802"

    const-string v2, "B-Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43405"

    const-string v2, "Ucell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43407"

    const-string v2, "Uzdunrobita"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43404"

    const-string v2, "UNITEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52503"

    const-string v2, "MobileOne"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52501"

    const-string v2, "SingTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "52505"

    const-string v2, "StarHub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41701"

    const-string v2, "SYRIATEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41702"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28305"

    const-string v2, "MTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28301"

    const-string v2, "Armentel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42101"

    const-string v2, "SABAFON"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41805"

    const-string v2, "AsiaCell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41830"

    const-string v2, "Iraqna"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43214"

    const-string v2, "TKC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "43211"

    const-string v2, "MCI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42501"

    const-string v2, "Partner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42502"

    const-string v2, "Cellcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42503"

    const-string v2, "PELEPHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40420"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40449"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40430"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40431"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40440"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40441"

    const-string v2, "Aircel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40405"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40498"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40496"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40403"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40445"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40446"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40495"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40493"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40427"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40490"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40492"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40410"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40411"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40414"

    const-string v2, "Spice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40402"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40470"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40494"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40443"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40497"

    const-string v2, "AirTel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "40474"

    const-string v2, "BSNL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51001"

    const-string v2, "Indosat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51021"

    const-string v2, "Indosat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51010"

    const-string v2, "Telkomsel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51011"

    const-string v2, "XL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "51089"

    const-string v2, "Hutchison"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41601"

    const-string v2, "Zain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41677"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "41603"

    const-string v2, "Umniah"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "42502"

    const-string v2, "Cellcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45201"

    const-string v2, "VMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45202"

    const-string v2, "GPC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45204"

    const-string v2, "VIETTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27601"

    const-string v2, "AMC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27602"

    const-string v2, "VODAFONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27201"

    const-string v2, "VODAFONE IRELAND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27202"

    const-string v2, "O2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24801"

    const-string v2, "EMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24802"

    const-string v2, "Elisa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24803"

    const-string v2, "Tele2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21303"

    const-string v2, "STA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23201"

    const-string v2, "A1 Telekom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23211"

    const-string v2, "A1 Telekom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23203"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23207"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23205"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23212"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23210"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25701"

    const-string v2, "FE VELCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25702"

    const-string v2, "Mobile TeleSystems"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28401"

    const-string v2, "MOBILTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28405"

    const-string v2, "Globul"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20601"

    const-string v2, "Belgacom Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20610"

    const-string v2, "Mobistar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20620"

    const-string v2, "KPN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27402"

    const-string v2, "Og fjarskipti hf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27401"

    const-string v2, "SIMINN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27404"

    const-string v2, "IMC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21803"

    const-string v2, "PUBLIC ENTERPRISECROATIAN TELECOMLtd."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26001"

    const-string v2, "PLUS GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26002"

    const-string v2, "ERA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26003"

    const-string v2, "Centertel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26006"

    const-string v2, "P4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23801"

    const-string v2, "TDC MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23802"

    const-string v2, "Telenor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23820"

    const-string v2, "Telia Danmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23806"

    const-string v2, "HI3G"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26201"

    const-string v2, "Telekom Deutschland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26207"

    const-string v2, "Telefonica o2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26208"

    const-string v2, "Telefonica o2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26203"

    const-string v2, "E-PLUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26202"

    const-string v2, "VODAFONE D2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25001"

    const-string v2, "MTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25002"

    const-string v2, "MegaFon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25012"

    const-string v2, "Baykalwestcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25016"

    const-string v2, "NTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25005"

    const-string v2, "Yeniseytelecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25099"

    const-string v2, "VimpelCom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25017"

    const-string v2, "Rostelecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25039"

    const-string v2, "Rostelecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25003"

    const-string v2, "NCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25007"

    const-string v2, "PJSC SMARTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20810"

    const-string v2, "SFR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20801"

    const-string v2, "Orange F"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20820"

    const-string v2, "BYTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "28801"

    const-string v2, "FAROESE TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22201"

    const-string v2, "TIM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24001"

    const-string v2, "TeliaSonera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24414"

    const-string v2, "AMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24403"

    const-string v2, "DNA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24412"

    const-string v2, "DNA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24405"

    const-string v2, "ELISA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24421"

    const-string v2, "ELISA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24491"

    const-string v2, "TeliaSonera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20404"

    const-string v2, "VODAFONE NETHERLANDS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20408"

    const-string v2, "KPN TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20412"

    const-string v2, "TELFORT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20416"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20420"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23001"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23002"

    const-string v2, "Telefonica O2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23003"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21901"

    const-string v2, "CROATIAN TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21910"

    const-string v2, "Vipnet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24701"

    const-string v2, "LMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24702"

    const-string v2, "Tele2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24602"

    const-string v2, "BITE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24601"

    const-string v2, "Omnitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24603"

    const-string v2, "Tele2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22801"

    const-string v2, "Swisscom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27001"

    const-string v2, "P&T LUXEMBOURG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27077"

    const-string v2, "TANGO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27099"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22610"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22601"

    const-string v2, "VODAFONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "27801"

    const-string v2, "VODAFONE MALTA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "29401"

    const-string v2, "T-Mobile Macedonia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "29402"

    const-string v2, "One"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23458"

    const-string v2, "MANX TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25901"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25902"

    const-string v2, "MOLDCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24201"

    const-string v2, "Telenor Mobil AS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24202"

    const-string v2, "TeliaSonera Norge"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26801"

    const-string v2, "VODAFONE PORTUG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26803"

    const-string v2, "OPTIMUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26806"

    const-string v2, "TMN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24008"

    const-string v2, "Telenor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24002"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24007"

    const-string v2, "Tele2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "24010"

    const-string v2, "Tele2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22803"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22802"

    const-string v2, "Sunrise"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22002"

    const-string v2, "Telenor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21201"

    const-string v2, "Vala"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22001"

    const-string v2, "Telenor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23102"

    const-string v2, "Telekom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23101"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23106"

    const-string v2, "Telefonica O2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "29341"

    const-string v2, "Telekom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "29340"

    const-string v2, "Si Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25503"

    const-string v2, "Kyivstar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25501"

    const-string v2, "MTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25502"

    const-string v2, "URS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "25506"

    const-string v2, "Astelit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21406"

    const-string v2, "Vodafone Espana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21403"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21407"

    const-string v2, "TELEFONICA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21404"

    const-string v2, "Xfera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20205"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20201"

    const-string v2, "COSMOTE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20209"

    const-string v2, "Wind Hellas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "20210"

    const-string v2, "Wind Hellas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21601"

    const-string v2, "Telenor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21630"

    const-string v2, "T-Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "21670"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22210"

    const-string v2, "Vodafone Omnitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22288"

    const-string v2, "WIND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "22299"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23415"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23455"

    const-string v2, "Cable & Wireless"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23450"

    const-string v2, "JERSEY TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23433"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23430"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23420"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23415"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "26601"

    const-string v2, "Gibtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "55280"

    const-string v2, "PMC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50502"

    const-string v2, "OPTUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50501"

    const-string v2, "Telstra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "50503"

    const-string v2, "Vodafone AUSTRALIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "53701"

    const-string v2, "Bmobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "54201"

    const-string v2, "VODAFONE FIJI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "54202"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310140"

    const-string v2, "PULSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "31047"

    const-string v2, "Docomo Pacific"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "53001"

    const-string v2, "VODAFONE  NEWZEALAND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "54720"

    const-string v2, "TIKIPHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "36302"

    const-string v2, "MOSSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "36301"

    const-string v2, "Setar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "338050"

    const-string v2, "MOSSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71401"

    const-string v2, "CWP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71404"

    const-string v2, "Digicel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310150"

    const-string v2, "AT&T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310170"

    const-string v2, "AT&T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310380"

    const-string v2, "AT&T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310410"

    const-string v2, "AT&T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70267"

    const-string v2, "BTL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "37001"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "37002"

    const-string v2, "Claro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "36801"

    const-string v2, "ETECSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "302370"

    const-string v2, "ROGERS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310160"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310200"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310210"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310220"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310230"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310240"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310250"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310260"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310270"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310310"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310490"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310580"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310660"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "310800"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "316010"

    const-string v2, "SPRINT NEXTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "334020"

    const-string v2, "TELCEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "334030"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71021"

    const-string v2, "Enitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70602"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70603"

    const-string v2, "TELEMOVIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70601"

    const-string v2, "CTE Telecom Personal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70604"

    const-string/jumbo v2, "movistar telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70401"

    const-string v2, "Sercom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "70403"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72234"

    const-string v2, "TELCOM PERSONAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "722310"

    const-string v2, "CLARO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72207"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "36439"

    const-string v2, "BTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74401"

    const-string v2, "HOLA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74402"

    const-string v2, "CLARO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72431"

    const-string v2, "Oi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72404"

    const-string v2, "TIM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72403"

    const-string v2, "TIM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72402"

    const-string v2, "TIM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72405"

    const-string v2, "Claro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72406"

    const-string v2, "VIVO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72410"

    const-string v2, "VIVO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "72411"

    const-string v2, "VIVO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73602"

    const-string v2, "ENTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74001"

    const-string v2, "CONECEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74000"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "34020"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "732111"

    const-string v2, "MOVIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "732101"

    const-string v2, "Comcel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "732123"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71201"

    const-string v2, "I.C.E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "34001"

    const-string v2, "ORANGE CARAIBE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "738002"

    const-string v2, "GT&T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73801"

    const-string v2, "MOSSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "708001"

    const-string v2, "Claro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "708040"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "34002"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71610"

    const-string v2, "AMERICA MOVIL PERU SAC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "71606"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74602"

    const-string v2, "TELESUR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74603"

    const-string v2, "DIGICEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73402"

    const-string v2, "DIGITEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73401"

    const-string v2, "INF orNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73403"

    const-string v2, "Digital Celular"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73404"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74801"

    const-string v2, "ANTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74810"

    const-string v2, "CLARO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "74807"

    const-string v2, "Telefonica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73001"

    const-string v2, "ENTEL PCS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73002"

    const-string v2, "TELEFONICA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "73003"

    const-string v2, "Claro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60302"

    const-string v2, "DJEZZY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60303"

    const-string v2, "Wataniya Telecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60202"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60201"

    const-string v2, "MobiNil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60203"

    const-string v2, "Etisalat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63601"

    const-string v2, "ETC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63102"

    const-string v2, "Unitel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61603"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65201"

    const-string v2, "Mascom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65202"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61302"

    const-string v2, "AIRTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64282"

    const-string v2, "UCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62701"

    const-string/jumbo v2, "orange GQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61501"

    const-string v2, "TOGOCEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62501"

    const-string v2, "CV Movel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60702"

    const-string v2, "Africell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62901"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63001"

    const-string v2, "VODACOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63002"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62001"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62002"

    const-string v2, "Vodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62803"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64804"

    const-string v2, "Econet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64801"

    const-string v2, "Net*One"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62401"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62402"

    const-string/jumbo v2, "orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61205"

    const-string v2, "MTN C-te d\'lvoire"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61202"

    const-string v2, "MOOV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63903"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63902"

    const-string v2, "Safaricom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65101"

    const-string v2, "VODACOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65102"

    const-string v2, "Econet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61807"

    const-string v2, "Celcom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61801"

    const-string v2, "Lonestar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60601"

    const-string v2, "Al Madar Al Jadid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64710"

    const-string v2, "SRR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63510"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64601"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64602"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64604"

    const-string/jumbo v2, "telma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65010"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61001"

    const-string v2, "MALITEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61002"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61701"

    const-string v2, "ORANGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61710"

    const-string v2, "EMTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60401"

    const-string v2, "MAROC TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64301"

    const-string v2, "Mocambique"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64304"

    const-string v2, "Vodacom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64901"

    const-string v2, "MTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65510"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65501"

    const-string v2, "Vodacom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "614002"

    const-string v2, "Celtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61404"

    const-string v2, "Orange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62120"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62150"

    const-string v2, "Glo Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62130"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "61901"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60801"

    const-string v2, "Sonatel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63301"

    const-string v2, "cable&wireless"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "65310"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63401"

    const-string v2, "ZAIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "63402"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64005"

    const-string v2, "CELTEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64004"

    const-string v2, "Vodacom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "60502"

    const-string v2, "TUNISIE TELECOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64101"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64111"

    const-string v2, "Uganda Telecom Limited"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64110"

    const-string v2, "MTN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "64501"

    const-string v2, "Airtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62201"

    const-string v2, "Zain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "62302"

    const-string v2, "TELECEL CENTRAFRIQUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "23410"

    const-string v2, "O2-UK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45412"

    const-string v2, "CMCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45400"

    const-string v2, "CSL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45404"

    const-string v2, "3(2G)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45406"

    const-string v2, "SmarToneVodafone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45416"

    const-string v2, "PCCW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "45418"

    const-string v2, "CSL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/internal/telephony/OperatorList;->mOperatorCache:Ljava/util/HashMap;

    const-string v1, "31026"

    const-string v2, "T-MOBILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method
