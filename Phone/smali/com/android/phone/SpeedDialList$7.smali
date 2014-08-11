.class Lcom/android/phone/SpeedDialList$7;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpeedDialList;->createClickDelMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 459
    const-string v0, "SpeedDialList"

    const-string v1, "$$$$ delete the info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialMode;->fastDialDeleteOneInfo(I)Z

    .line 461
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$1000(Lcom/android/phone/SpeedDialList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$900(Lcom/android/phone/SpeedDialList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$7;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialList;->dismissDialog(I)V

    .line 463
    return-void
.end method
