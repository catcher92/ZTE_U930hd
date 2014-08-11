.class Landroid/net/http/RequestQueue$1$1;
.super Ljava/lang/Thread;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/RequestQueue$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/http/RequestQueue$1;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 236
    iput-object p1, p0, Landroid/net/http/RequestQueue$1$1;->this$1:Landroid/net/http/RequestQueue$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/http/RequestQueue$1$1;->this$1:Landroid/net/http/RequestQueue$1;

    iget-object v0, v0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    #calls: Landroid/net/http/RequestQueue;->setProxyConfig()V
    invoke-static {v0}, Landroid/net/http/RequestQueue;->access$300(Landroid/net/http/RequestQueue;)V

    .line 239
    return-void
.end method
