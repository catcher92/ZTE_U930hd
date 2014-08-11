.class Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreferenceVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreferenceVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreferenceVT;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreferenceVT;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreferenceVT;Lcom/android/phone/CallForwardEditPreferenceVT$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreferenceVT;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x190

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 160
    const-string v4, "CallForwardEditPreferenceVT"

    const-string v5, "handleGetCFResponse: done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez v4, :cond_0

    .line 164
    const-string v4, "CallForwardEditPreferenceVT"

    const-string v5, "handleGetCFResponse: tcpListener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 168
    :cond_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v6, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v4, v5, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 174
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 177
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 178
    const-string v4, "CallForwardEditPreferenceVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse: ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v4, v7}, Lcom/android/phone/CallForwardEditPreferenceVT;->setEnabled(Z)V

    .line 180
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    const/16 v6, 0x12c

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 205
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    #calls: Lcom/android/phone/CallForwardEditPreferenceVT;->updateSummaryText()V
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreferenceVT;->access$200(Lcom/android/phone/CallForwardEditPreferenceVT;)V

    goto :goto_0

    .line 171
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_1

    .line 182
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_3
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 183
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v4, v5, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 185
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v4

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 186
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v4, v1

    if-nez v4, :cond_5

    .line 187
    const-string v4, "CallForwardEditPreferenceVT"

    const-string v5, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v4, v7}, Lcom/android/phone/CallForwardEditPreferenceVT;->setEnabled(Z)V

    .line 189
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v4, v4, Lcom/android/phone/CallForwardEditPreferenceVT;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v4, v5, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_2

    .line 191
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v1

    .local v3, length:I
    :goto_3
    if-ge v2, v3, :cond_1

    .line 192
    const-string v4, "CallForwardEditPreferenceVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    #getter for: Lcom/android/phone/CallForwardEditPreferenceVT;->mServiceClass:I
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreferenceVT;->access$100(Lcom/android/phone/CallForwardEditPreferenceVT;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 196
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/phone/CallForwardEditPreferenceVT;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 191
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 211
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "CallForwardEditPreferenceVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    const-string v1, "CallForwardEditPreferenceVT"

    const-string v2, "handleSetCFResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreferenceVT;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    #getter for: Lcom/android/phone/CallForwardEditPreferenceVT;->mServiceClass:I
    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->access$100(Lcom/android/phone/CallForwardEditPreferenceVT;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v5, v5, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    const/4 v6, 0x1

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 218
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreferenceVT$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
