.class public final Lleadcore/gesture/SliderHandler$H;
.super Landroid/os/Handler;
.source "SliderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/gesture/SliderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# static fields
.field public static final AUTO_FIRE_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lleadcore/gesture/SliderHandler;


# direct methods
.method public constructor <init>(Lleadcore/gesture/SliderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 45
    :pswitch_0
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mDelPos:I
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$000(Lleadcore/gesture/SliderHandler;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mDelPos:I
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$000(Lleadcore/gesture/SliderHandler;)I

    move-result v0

    const/16 v1, -0xa

    if-le v0, v1, :cond_0

    monitor-exit p0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$100(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$FireEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mDelPos:I
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$000(Lleadcore/gesture/SliderHandler;)I

    move-result v0

    if-lez v0, :cond_3

    .line 54
    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v6

    .line 62
    .local v6, ge:Lleadcore/gesture/GestureEvent;
    :goto_1
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    #setter for: Lleadcore/gesture/SliderHandler;->mMoveLastTm:J
    invoke-static {v0, v1, v2}, Lleadcore/gesture/SliderHandler;->access$202(Lleadcore/gesture/SliderHandler;J)J

    .line 63
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$100(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$FireEvent;

    move-result-object v0

    invoke-interface {v0, v6}, Lleadcore/gesture/SliderHandler$FireEvent;->onEvent(Lleadcore/gesture/GestureEvent;)V

    .line 67
    .end local v6           #ge:Lleadcore/gesture/GestureEvent;
    :cond_1
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mInterval:J
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$300(Lleadcore/gesture/SliderHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 69
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$400(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lleadcore/gesture/SliderHandler$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 70
    .local v7, msg2:Landroid/os/Message;
    iget-object v0, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;
    invoke-static {v0}, Lleadcore/gesture/SliderHandler;->access$400(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$H;

    move-result-object v0

    iget-object v1, p0, Lleadcore/gesture/SliderHandler$H;->this$0:Lleadcore/gesture/SliderHandler;

    #getter for: Lleadcore/gesture/SliderHandler;->mInterval:J
    invoke-static {v1}, Lleadcore/gesture/SliderHandler;->access$300(Lleadcore/gesture/SliderHandler;)J

    move-result-wide v1

    invoke-virtual {v0, v7, v1, v2}, Lleadcore/gesture/SliderHandler$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .end local v7           #msg2:Landroid/os/Message;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .restart local v6       #ge:Lleadcore/gesture/GestureEvent;
    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
