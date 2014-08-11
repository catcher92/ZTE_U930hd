.class public final enum Lleadcore/telephony/Phone$DataActivityState;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lleadcore/telephony/Phone$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lleadcore/telephony/Phone$DataActivityState;

.field public static final enum DATAIN:Lleadcore/telephony/Phone$DataActivityState;

.field public static final enum DATAINANDOUT:Lleadcore/telephony/Phone$DataActivityState;

.field public static final enum DATAOUT:Lleadcore/telephony/Phone$DataActivityState;

.field public static final enum DORMANT:Lleadcore/telephony/Phone$DataActivityState;

.field public static final enum NONE:Lleadcore/telephony/Phone$DataActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lleadcore/telephony/Phone$DataActivityState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lleadcore/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->NONE:Lleadcore/telephony/Phone$DataActivityState;

    new-instance v0, Lleadcore/telephony/Phone$DataActivityState;

    const-string v1, "DATAIN"

    invoke-direct {v0, v1, v3}, Lleadcore/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->DATAIN:Lleadcore/telephony/Phone$DataActivityState;

    new-instance v0, Lleadcore/telephony/Phone$DataActivityState;

    const-string v1, "DATAOUT"

    invoke-direct {v0, v1, v4}, Lleadcore/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->DATAOUT:Lleadcore/telephony/Phone$DataActivityState;

    new-instance v0, Lleadcore/telephony/Phone$DataActivityState;

    const-string v1, "DATAINANDOUT"

    invoke-direct {v0, v1, v5}, Lleadcore/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->DATAINANDOUT:Lleadcore/telephony/Phone$DataActivityState;

    new-instance v0, Lleadcore/telephony/Phone$DataActivityState;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v6}, Lleadcore/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->DORMANT:Lleadcore/telephony/Phone$DataActivityState;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lleadcore/telephony/Phone$DataActivityState;

    sget-object v1, Lleadcore/telephony/Phone$DataActivityState;->NONE:Lleadcore/telephony/Phone$DataActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lleadcore/telephony/Phone$DataActivityState;->DATAIN:Lleadcore/telephony/Phone$DataActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lleadcore/telephony/Phone$DataActivityState;->DATAOUT:Lleadcore/telephony/Phone$DataActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lleadcore/telephony/Phone$DataActivityState;->DATAINANDOUT:Lleadcore/telephony/Phone$DataActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lleadcore/telephony/Phone$DataActivityState;->DORMANT:Lleadcore/telephony/Phone$DataActivityState;

    aput-object v1, v0, v6

    sput-object v0, Lleadcore/telephony/Phone$DataActivityState;->$VALUES:[Lleadcore/telephony/Phone$DataActivityState;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lleadcore/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    const-class v0, Lleadcore/telephony/Phone$DataActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lleadcore/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public static values()[Lleadcore/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lleadcore/telephony/Phone$DataActivityState;->$VALUES:[Lleadcore/telephony/Phone$DataActivityState;

    invoke-virtual {v0}, [Lleadcore/telephony/Phone$DataActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lleadcore/telephony/Phone$DataActivityState;

    return-object v0
.end method
