.class public Lcom/android/phone/FacilityLockCmd;
.super Lcom/android/phone/RilUnit;
.source "FacilityLockCmd.java"


# static fields
.field private static mMockSetResult:Z


# instance fields
.field mCmd:Ljava/lang/String;

.field mLocked:Z

.field mPassword:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/FacilityLockCmd;->mMockSetResult:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "cmd"
    .parameter "password"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/RilUnit;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 38
    iput-object p1, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 39
    iput-object p2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method DoGetProc()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    const-string v0, "FacilityLockCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoGetProc password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CurrentCallState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v0, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/IccCard;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 54
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_1
    sget v0, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-ne v0, v4, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method DoMockSetProc()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 81
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 82
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v2}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v1

    .line 83
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetProcCode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    return v5
.end method

.method DoSetProc()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 60
    const-string v0, "FacilityLockCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoSetProc password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/android/phone/FacilityLockCmd;->mMockSetResult:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->DoMockSetProc()I

    move-result v6

    .line 76
    :cond_0
    :goto_0
    return v6

    .line 66
    :cond_1
    sget v0, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    .line 68
    :cond_3
    sget v0, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-ne v0, v4, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    const-string v1, "AB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v5

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    if-nez v2, :cond_5

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v5

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_2
.end method

.method public IsLocked()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    return v0
.end method

.method protected OnGetResult(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 92
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 94
    aget v2, v1, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 100
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 94
    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "FacilityLockCmd"

    const-string v3, "Wrong Result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    .line 116
    return-void
.end method

.method SetStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 121
    return-void
.end method
