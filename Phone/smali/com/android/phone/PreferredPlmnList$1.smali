.class Lcom/android/phone/PreferredPlmnList$1;
.super Landroid/os/Handler;
.source "PreferredPlmnList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredPlmnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredPlmnList;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredPlmnList;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #getter for: Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$000(Lcom/android/phone/PreferredPlmnList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 105
    .local v1, getmsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getPreferredPLMNList(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    .end local v1           #getmsg:Landroid/os/Message;
    :cond_1
    const-string v2, "PreferredPlmnList"

    const-string v3, "failed to set type with long format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayQueryFailed()V
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$100(Lcom/android/phone/PreferredPlmnList;)V

    .line 109
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2, v5}, Lcom/android/phone/PreferredPlmnList;->dismissDialog(I)V

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V
    invoke-static {v2, v4}, Lcom/android/phone/PreferredPlmnList;->access$200(Lcom/android/phone/PreferredPlmnList;Z)V

    goto :goto_0

    .line 119
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 122
    const-string v2, "PreferredPlmnList"

    const-string v3, "successful to load list with long format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->doListLoaded(Landroid/os/AsyncResult;Z)V
    invoke-static {v2, v0, v4}, Lcom/android/phone/PreferredPlmnList;->access$300(Lcom/android/phone/PreferredPlmnList;Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v2, "PreferredPlmnList"

    const-string v3, "failed to load list with long format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2, v5}, Lcom/android/phone/PreferredPlmnList;->dismissDialog(I)V

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayQueryFailed()V
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$100(Lcom/android/phone/PreferredPlmnList;)V

    .line 132
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V
    invoke-static {v2, v4}, Lcom/android/phone/PreferredPlmnList;->access$200(Lcom/android/phone/PreferredPlmnList;Z)V

    goto/16 :goto_0

    .line 137
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 139
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 141
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #getter for: Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$000(Lcom/android/phone/PreferredPlmnList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 142
    .restart local v1       #getmsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getPreferredPLMNList(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 144
    .end local v1           #getmsg:Landroid/os/Message;
    :cond_5
    const-string v2, "PreferredPlmnList"

    const-string v3, "fail to load list with numeric format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayQueryFailed()V
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$100(Lcom/android/phone/PreferredPlmnList;)V

    .line 146
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2, v5}, Lcom/android/phone/PreferredPlmnList;->dismissDialog(I)V

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V
    invoke-static {v2, v4}, Lcom/android/phone/PreferredPlmnList;->access$200(Lcom/android/phone/PreferredPlmnList;Z)V

    goto/16 :goto_0

    .line 156
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 158
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 159
    const-string v2, "PreferredPlmnList"

    const-string v3, "successful to load list with numeric format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    const/4 v3, 0x0

    #calls: Lcom/android/phone/PreferredPlmnList;->doListLoaded(Landroid/os/AsyncResult;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/phone/PreferredPlmnList;->access$300(Lcom/android/phone/PreferredPlmnList;Landroid/os/AsyncResult;Z)V

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    iget-object v2, v2, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2, v5}, Lcom/android/phone/PreferredPlmnList;->dismissDialog(I)V

    goto/16 :goto_0

    .line 162
    :cond_7
    const-string v2, "PreferredPlmnList"

    const-string v3, "failed to load list with numeric format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayQueryFailed()V
    invoke-static {v2}, Lcom/android/phone/PreferredPlmnList;->access$100(Lcom/android/phone/PreferredPlmnList;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-virtual {v2}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList$1;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V
    invoke-static {v2, v4}, Lcom/android/phone/PreferredPlmnList;->access$200(Lcom/android/phone/PreferredPlmnList;Z)V

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
