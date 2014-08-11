.class Lcom/android/phone/InCallScreen$RecordTask;
.super Landroid/os/AsyncTask;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 5074
    iput-object p1, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5075
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen$RecordTask;->action:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .parameter "actions"

    .prologue
    const/4 v2, 0x0

    .line 5078
    const/4 v0, -0x1

    .line 5079
    .local v0, iRet:I
    if-eqz p1, :cond_0

    aget-object v1, p1, v2

    if-nez v1, :cond_1

    .line 5080
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5089
    :goto_0
    return-object v1

    .line 5082
    :cond_1
    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/android/phone/InCallScreen$RecordTask;->action:Ljava/lang/Integer;

    .line 5083
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 5084
    iget-object v1, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->startRecorder(Landroid/content/Context;I)I

    .line 5088
    :goto_1
    const/4 v0, 0x0

    .line 5089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 5086
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->stopRecorder(Landroid/content/Context;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5074
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen$RecordTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 5093
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 5116
    :cond_0
    :goto_0
    return-void

    .line 5096
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)V

    .line 5097
    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v6, v2, :cond_2

    .line 5099
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 5100
    .local v0, defPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtils.getFilePath() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 5101
    const-string v2, "sdcard2"

    const-string v3, "phone"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5102
    .local v1, toastPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0270

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5105
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSDCardFreeBlocks()I

    move-result v2

    if-le v2, v6, :cond_0

    goto :goto_0

    .line 5113
    .end local v0           #defPath:Ljava/lang/String;
    .end local v1           #toastPath:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$RecordTask;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallTouchUi;->updateRecordTime()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5074
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen$RecordTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
