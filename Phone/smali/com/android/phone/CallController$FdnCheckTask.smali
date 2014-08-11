.class public Lcom/android/phone/CallController$FdnCheckTask;
.super Landroid/os/AsyncTask;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FdnCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallController;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .parameter "numbers"

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 855
    const-string v1, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ doInBackground, numbers[0]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-eqz p1, :cond_0

    aget-object v1, p1, v8

    if-nez v1, :cond_1

    .line 857
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 881
    :goto_0
    return-object v1

    .line 859
    :cond_1
    aget-object v1, p1, v8

    iput-object v1, p0, Lcom/android/phone/CallController$FdnCheckTask;->number:Ljava/lang/String;

    .line 860
    const-string v1, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ doInBackground, number ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallController$FdnCheckTask;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v1, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 863
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 864
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 866
    :cond_2
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 867
    .local v6, c:Landroid/database/Cursor;
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ c ===> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-nez v6, :cond_3

    .line 869
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 871
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 872
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 873
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 874
    iget-object v1, p0, Lcom/android/phone/CallController$FdnCheckTask;->number:Ljava/lang/String;

    const-string v2, "number"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallController;->isSuccessfulComparison(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/CallController;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 875
    invoke-static {}, Lcom/android/phone/CallController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CallController"

    const-string v2, "$$$$ isSuccessfulComparison ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 877
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 872
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 880
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 881
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 851
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallController$FdnCheckTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 885
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ onPostExecute , result= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 888
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 892
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    iget-object v3, p0, Lcom/android/phone/CallController$FdnCheckTask;->number:Ljava/lang/String;

    #calls: Lcom/android/phone/CallController;->placeCallFdn(Ljava/lang/String;)Lcom/android/phone/Constants$CallStatusCode;
    invoke-static {v2, v3}, Lcom/android/phone/CallController;->access$300(Lcom/android/phone/CallController;Ljava/lang/String;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    .line 893
    .local v1, status:Lcom/android/phone/Constants$CallStatusCode;
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ onPostExecute , fdnPhoneIsInUse()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #calls: Lcom/android/phone/CallController;->fdnPhoneIsInUse()Z
    invoke-static {v4}, Lcom/android/phone/CallController;->access$400(Lcom/android/phone/CallController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v1, v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 896
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #calls: Lcom/android/phone/CallController;->fdnPhoneIsInUse()Z
    invoke-static {v2}, Lcom/android/phone/CallController;->access$400(Lcom/android/phone/CallController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setInCallScreenModeEx(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 901
    :cond_0
    sget-object v2, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallController;->access$500(Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #calls: Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    invoke-static {v2, v1}, Lcom/android/phone/CallController;->access$600(Lcom/android/phone/CallController;Lcom/android/phone/Constants$CallStatusCode;)V

    .line 945
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 952
    .end local v1           #status:Lcom/android/phone/Constants$CallStatusCode;
    :goto_1
    return-void

    .line 905
    .restart local v1       #status:Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_0
    invoke-static {}, Lcom/android/phone/CallController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallController;->access$500(Ljava/lang/String;)V

    .line 907
    :cond_1
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v1, v2, :cond_2

    .line 908
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 913
    :goto_2
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_2

    .line 947
    .end local v1           #status:Lcom/android/phone/Constants$CallStatusCode;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 948
    iget-object v2, p0, Lcom/android/phone/CallController$FdnCheckTask;->this$0:Lcom/android/phone/CallController;

    #getter for: Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallController;->access$000(Lcom/android/phone/CallController;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    const v3, 0x7f0c02c6

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 950
    :cond_4
    const-string v2, "CallController"

    const-string v3, "should never come here"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 851
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallController$FdnCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
