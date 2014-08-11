.class Lcom/android/phone/PhoneRestrictSetting$1;
.super Lcom/android/phone/RilConnector;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Lcom/android/phone/RilConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected FinalHandleWhenMsgCome(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 96
    const-string v0, "+++++++++wpz++++FinalHandleWhenMsgCome+++++"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Lcom/android/phone/RilConnector;->FinalHandleWhenMsgCome(Landroid/os/Message;)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->IsQuerryOver()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$000(Lcom/android/phone/PhoneRestrictSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->QuerryRecord()V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->access$002(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    .line 105
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "dismiss wait Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    goto :goto_0
.end method

.method protected OnException(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "code"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/android/phone/RilConnector;->OnException(Landroid/os/AsyncResult;I)V

    .line 116
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 117
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting;->OnExecuteException()V

    goto :goto_0
.end method
