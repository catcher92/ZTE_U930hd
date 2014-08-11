.class public Lcom/broadcom/bt/app/fm/rx/Station;
.super Ljava/lang/Object;
.source "Station.java"


# instance fields
.field public mFreq:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/app/fm/rx/Station;)V
    .locals 1
    .parameter "sti"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "freq"
    .parameter "name"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method
