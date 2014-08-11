.class Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;
.super Ljava/lang/Object;
.source "FmReceiver.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;->this$1:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1588
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1590
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;)V

    return-object v0
.end method
