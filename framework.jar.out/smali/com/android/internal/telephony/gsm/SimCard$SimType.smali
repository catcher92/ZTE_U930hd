.class public final enum Lcom/android/internal/telephony/gsm/SimCard$SimType;
.super Ljava/lang/Enum;
.source "SimCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SimCard$SimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SimCard$SimType;

.field public static final enum SIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/gsm/SimCard$SimType;

.field public static final enum USIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;

    const-string v1, "SIM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->SIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;

    const-string v1, "USIM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SimCard$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->USIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SimCard$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->UNKNOWN:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SimCard$SimType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SimCard$SimType;->SIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SimCard$SimType;->USIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SimCard$SimType;->UNKNOWN:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->$VALUES:[Lcom/android/internal/telephony/gsm/SimCard$SimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SimCard$SimType;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SimCard$SimType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->$VALUES:[Lcom/android/internal/telephony/gsm/SimCard$SimType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SimCard$SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SimCard$SimType;

    return-object v0
.end method


# virtual methods
.method public isSimCard()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->SIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimCard()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$SimType;->USIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
