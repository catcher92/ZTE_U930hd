.class final Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;
.super Ljava/lang/Object;
.source "LocalCallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/LocalCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mCookie:Ljava/lang/Object;

.field final synthetic this$0:Lcom/broadcom/bt/service/framework/LocalCallbackList;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/framework/LocalCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    .local p2, callback:Landroid/os/IInterface;,"TE;"
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->this$0:Lcom/broadcom/bt/service/framework/LocalCallbackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 52
    iput-object p3, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->mCookie:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .prologue
    .line 56
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    return-void
.end method
