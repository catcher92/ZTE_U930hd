.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 144
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 278
    const-string v10, "PhoneInterfaceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_baidu_0
    :goto_0
    return-void

    .line 146
    :sswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 147
    .local v6, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v11, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11, v10}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 150
    monitor-enter v6

    .line 151
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 156
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 157
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 159
    .local v3, onCompleted:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, v3}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 163
    .end local v3           #onCompleted:Landroid/os/Message;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 164
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 165
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 166
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 172
    :goto_1
    monitor-enter v6

    .line 173
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 169
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 178
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_3
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 182
    :sswitch_4
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 186
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 187
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x0

    .line 188
    .local v2, hungUp:Z
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 189
    .local v5, phoneType:I
    const/4 v10, 0x2

    if-ne v5, v10, :cond_1

    .line 192
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    .line 199
    :goto_2
    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CMD_END_CALL: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_3

    const-string v10, "hung up!"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v11, v10}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 200
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 202
    monitor-enter v6

    .line 203
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v10

    .line 193
    :cond_1
    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    .line 195
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    goto :goto_2

    .line 197
    :cond_2
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 199
    :cond_3
    const-string v10, "no call to hang up"

    goto :goto_3

    .line 209
    .end local v2           #hungUp:Z
    .end local v5           #phoneType:I
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_6
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "CMD_DO_SIM_AUTH "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 210
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 211
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v10, 0x3f0

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 213
    .restart local v3       #onCompleted:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v11

    iget-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10, v3}, Lcom/android/internal/telephony/IccCard;->doSimAuth(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 217
    .end local v3           #onCompleted:Landroid/os/Message;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_7
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "EVENT_DO_SIM_AUTH_DONE "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 221
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v7, ret:Landroid/os/Bundle;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_4

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 225
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "ar.result != null "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 226
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Landroid/telephony/SimAuthCnf;

    .line 227
    .local v8, simAuth:Landroid/telephony/SimAuthCnf;
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simAuth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 233
    :goto_4
    invoke-virtual {v8, v7}, Landroid/telephony/SimAuthCnf;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 234
    iput-object v7, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 237
    monitor-enter v6

    .line 238
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v10

    .line 230
    .end local v8           #simAuth:Landroid/telephony/SimAuthCnf;
    :cond_4
    new-instance v8, Landroid/telephony/SimAuthCnf;

    invoke-direct {v8}, Landroid/telephony/SimAuthCnf;-><init>()V

    .restart local v8       #simAuth:Landroid/telephony/SimAuthCnf;
    goto :goto_4

    .line 242
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v7           #ret:Landroid/os/Bundle;
    .end local v8           #simAuth:Landroid/telephony/SimAuthCnf;
    :sswitch_8
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "CMD_DO_USIM_AUTH "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 243
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 244
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v10, 0x3f2

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 246
    .restart local v3       #onCompleted:Landroid/os/Message;
    iget-object v4, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/PhoneInterfaceManager$Paramter;

    .line 248
    .local v4, paramter:Lcom/android/phone/PhoneInterfaceManager$Paramter;
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    iget-object v11, v4, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg1:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg2:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/internal/telephony/IccCard;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 252
    .end local v3           #onCompleted:Landroid/os/Message;
    .end local v4           #paramter:Lcom/android/phone/PhoneInterfaceManager$Paramter;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_9
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "EVENT_DO_USIM_AUTH_DONE "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 254
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 256
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v1, data:Landroid/os/Bundle;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_5

    .line 260
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v11, "ar.result != null "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 261
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/telephony/UsimAuthCnf;

    .line 266
    .local v9, usimAuth:Landroid/telephony/UsimAuthCnf;
    :goto_5
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "usimAuth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v9, v1}, Landroid/telephony/UsimAuthCnf;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 269
    iput-object v1, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 272
    monitor-enter v6

    .line 273
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v10

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v10

    .line 264
    .end local v9           #usimAuth:Landroid/telephony/UsimAuthCnf;
    :cond_5
    new-instance v9, Landroid/telephony/UsimAuthCnf;

    invoke-direct {v9}, Landroid/telephony/UsimAuthCnf;-><init>()V

    .restart local v9       #usimAuth:Landroid/telephony/UsimAuthCnf;
    goto :goto_5






    :sswitch_10
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 151
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v10, 0x20

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 153
    .restart local v3       #onCompleted:Landroid/os/Message;
    iget-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v6, :cond_baidu_0

    .line 154
    iget-object v8, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/PhoneInterfaceManager$ScAddr;

    .line 155
    .local v8, sca:Lcom/android/phone/PhoneInterfaceManager$ScAddr;
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca get sc single"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, v3}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_0

    .line 161
    .end local v3           #onCompleted:Landroid/os/Message;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v8           #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddr;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 164
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_baidu_2

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_baidu_2

    .line 165
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca get result"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 172
    :goto_baidu_2
    monitor-enter v6

    .line 173
    :try_start_5
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca notify sleep thread"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v10

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v10

    .line 168
    :cond_baidu_2
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca Fail to get sc address"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v10, Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_baidu_2

    .line 179
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_12
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 180
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v10, 0x22

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 182
    .restart local v3       #onCompleted:Landroid/os/Message;
    iget-object v8, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/PhoneInterfaceManager$ScAddr;

    .line 183
    .restart local v8       #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddr;
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca set sc single"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, v8, Lcom/android/phone/PhoneInterfaceManager$ScAddr;->scAddr:Ljava/lang/String;

    invoke-interface {v10, v11, v3}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 187
    .end local v3           #onCompleted:Landroid/os/Message;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v8           #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddr;
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 188
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 189
    .restart local v6       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_baidu_3

    .line 190
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca Fail: set sc address"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_baidu_3
    new-instance v10, Ljava/lang/Object;

    invoke-direct/range {v10 .. v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v6, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 196
    monitor-enter v6

    .line 197
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v10

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v10

    .line 192
    :cond_baidu_3
    const-string v10, "PhoneInterfaceManager"

    const-string v11, "[sca Done: set sc address"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_baidu_3

    .line 201
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;









    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x1f -> :sswitch_10
        0x20 -> :sswitch_11
        0x21 -> :sswitch_12
        0x22 -> :sswitch_13	        
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
    .end sparse-switch
.end method
