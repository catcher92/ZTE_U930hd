.class public abstract Lcom/android/phone/RilUnit;
.super Ljava/lang/Object;
.source "RilUnit.java"


# instance fields
.field protected mCode:I

.field protected mConnector:Lcom/android/phone/RilConnector;

.field protected mIsQuerrying:Z

.field protected mIsSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    .line 19
    return-void
.end method


# virtual methods
.method public Bind(Lcom/android/phone/RilConnector;I)V
    .locals 2
    .parameter "connector"
    .parameter "code"

    .prologue
    .line 50
    const-string v0, "RilUnit"

    const-string v1, "Bind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p1, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    .line 52
    iput p2, p0, Lcom/android/phone/RilUnit;->mCode:I

    .line 53
    return-void
.end method

.method abstract DoGetProc()I
.end method

.method abstract DoSetProc()I
.end method

.method public Get()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->IsWaitingForResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    :goto_0
    return v1

    .line 31
    :cond_0
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->DoGetProc()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected GetMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 62
    const-string v0, "RilUnit"

    const-string v1, "GetMessage1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v0, "RilUnit"

    const-string v1, "GetMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/RilUnit;->mCode:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public GetProcCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/RilUnit;->mCode:I

    return v0
.end method

.method protected Init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    .line 72
    return-void
.end method

.method public IsQuerrying()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    return v0
.end method

.method protected IsWaitingForResult()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    .line 96
    return-void
.end method

.method abstract OnGetResult(Landroid/os/Message;)V
.end method

.method public OnResult(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/phone/RilUnit;->OnGetResult(Landroid/os/Message;)V

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    .line 46
    return-void

    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/phone/RilUnit;->OnSetResult(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 91
    return-void
.end method

.method public Set()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->IsWaitingForResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    :goto_0
    return v1

    .line 24
    :cond_0
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    .line 25
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->DoSetProc()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
