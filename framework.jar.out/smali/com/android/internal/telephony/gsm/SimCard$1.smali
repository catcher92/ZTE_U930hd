.class Lcom/android/internal/telephony/gsm/SimCard$1;
.super Landroid/os/Handler;
.source "SimCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimCard;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SimCard;->access$100(Lcom/android/internal/telephony/gsm/SimCard;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCard] Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 88
    .local v1, simType:[I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SimCard;->access$000(Lcom/android/internal/telephony/gsm/SimCard;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCard] Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x1

    aget v3, v1, v5

    if-ne v2, v3, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    sget-object v3, Lcom/android/internal/telephony/gsm/SimCard$SimType;->SIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SimCard;->mSimType:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    goto :goto_0

    .line 92
    :cond_0
    const/4 v2, 0x2

    aget v3, v1, v5

    if-ne v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    sget-object v3, Lcom/android/internal/telephony/gsm/SimCard$SimType;->USIM:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SimCard;->mSimType:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard$1;->this$0:Lcom/android/internal/telephony/gsm/SimCard;

    sget-object v3, Lcom/android/internal/telephony/gsm/SimCard$SimType;->UNKNOWN:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SimCard;->mSimType:Lcom/android/internal/telephony/gsm/SimCard$SimType;

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
