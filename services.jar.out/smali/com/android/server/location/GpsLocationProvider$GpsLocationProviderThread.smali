.class final Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 1680
    const-string v0, "GpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1681
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1684
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->initialize()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1686
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1687
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1689
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1690
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1691
    return-void
.end method