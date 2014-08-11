.class Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;
.super Lcom/android/phone/RilUnit;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplyPin2Cmd"
.end annotation


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method public constructor <init>(Lcom/android/phone/GetPin2Screen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter "phone"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Lcom/android/phone/RilUnit;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    return-void
.end method


# virtual methods
.method DoGetProc()I
    .locals 3

    .prologue
    .line 103
    const-string v0, "PhoneApp"

    const-string v1, "DoGetProc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$100(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->GetMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method DoSetProc()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method OnErrorPin()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->OnErrorPin2Code()V

    .line 94
    return-void
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 70
    const-string v0, "PhoneApp"

    const-string v1, "OnException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Lcom/android/phone/RilUnit;->OnException(Landroid/os/AsyncResult;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->TryGetLeftRetryTimes(Landroid/os/AsyncResult;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->OnErrorPin()V

    .line 74
    return-void
.end method

.method OnGetResult(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->OnCorrectPin2Code()V

    .line 89
    return-void
.end method

.method TryGetLeftRetryTimes(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 78
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 79
    .local v0, intArray:[I
    array-length v1, v0

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    const/4 v2, 0x0

    aget v2, v0, v2

    #setter for: Lcom/android/phone/GetPin2Screen;->mRetryTimes:I
    invoke-static {v1, v2}, Lcom/android/phone/GetPin2Screen;->access$002(Lcom/android/phone/GetPin2Screen;I)I

    .line 82
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnGetResult lefttimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mRetryTimes:I
    invoke-static {v3}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method
