.class Landroid/net/wifi/TwManager$1;
.super Ljava/lang/Thread;
.source "TwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/TwManager;->webPortalLogin(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/TwManager;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/wifi/TwManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Landroid/net/wifi/TwManager$1;->this$0:Landroid/net/wifi/TwManager;

    iput-object p2, p0, Landroid/net/wifi/TwManager$1;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/TwManager$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    const-string/jumbo v1, "qxy"

    const-string/jumbo v2, "webPortalLogin run begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Landroid/net/wifi/TwManager$1;->this$0:Landroid/net/wifi/TwManager;

    iget-object v1, v1, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Landroid/net/wifi/TwManager$1;->this$0:Landroid/net/wifi/TwManager;

    iget-object v1, v1, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    iget-object v2, p0, Landroid/net/wifi/TwManager$1;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/TwManager$1;->val$password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/ITwManager;->webPortalLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string/jumbo v1, "qxy"

    const-string/jumbo v2, "webPortalLogin mService==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TwManager"

    const-string/jumbo v2, "webPortalLogin error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
