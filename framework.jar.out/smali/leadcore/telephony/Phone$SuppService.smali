.class public final enum Lleadcore/telephony/Phone$SuppService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lleadcore/telephony/Phone$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lleadcore/telephony/Phone$SuppService;

.field public static final enum CONFERENCE:Lleadcore/telephony/Phone$SuppService;

.field public static final enum HANGUP:Lleadcore/telephony/Phone$SuppService;

.field public static final enum REJECT:Lleadcore/telephony/Phone$SuppService;

.field public static final enum SEPARATE:Lleadcore/telephony/Phone$SuppService;

.field public static final enum SWITCH:Lleadcore/telephony/Phone$SuppService;

.field public static final enum TRANSFER:Lleadcore/telephony/Phone$SuppService;

.field public static final enum UNKNOWN:Lleadcore/telephony/Phone$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->UNKNOWN:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v4}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->SWITCH:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v5}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->SEPARATE:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v6}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->TRANSFER:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v7}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->CONFERENCE:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->REJECT:Lleadcore/telephony/Phone$SuppService;

    new-instance v0, Lleadcore/telephony/Phone$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lleadcore/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->HANGUP:Lleadcore/telephony/Phone$SuppService;

    .line 103
    const/4 v0, 0x7

    new-array v0, v0, [Lleadcore/telephony/Phone$SuppService;

    sget-object v1, Lleadcore/telephony/Phone$SuppService;->UNKNOWN:Lleadcore/telephony/Phone$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Lleadcore/telephony/Phone$SuppService;->SWITCH:Lleadcore/telephony/Phone$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Lleadcore/telephony/Phone$SuppService;->SEPARATE:Lleadcore/telephony/Phone$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Lleadcore/telephony/Phone$SuppService;->TRANSFER:Lleadcore/telephony/Phone$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Lleadcore/telephony/Phone$SuppService;->CONFERENCE:Lleadcore/telephony/Phone$SuppService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lleadcore/telephony/Phone$SuppService;->REJECT:Lleadcore/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lleadcore/telephony/Phone$SuppService;->HANGUP:Lleadcore/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    sput-object v0, Lleadcore/telephony/Phone$SuppService;->$VALUES:[Lleadcore/telephony/Phone$SuppService;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lleadcore/telephony/Phone$SuppService;
    .locals 1
    .parameter "name"

    .prologue
    .line 103
    const-class v0, Lleadcore/telephony/Phone$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lleadcore/telephony/Phone$SuppService;

    return-object v0
.end method

.method public static values()[Lleadcore/telephony/Phone$SuppService;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lleadcore/telephony/Phone$SuppService;->$VALUES:[Lleadcore/telephony/Phone$SuppService;

    invoke-virtual {v0}, [Lleadcore/telephony/Phone$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lleadcore/telephony/Phone$SuppService;

    return-object v0
.end method
