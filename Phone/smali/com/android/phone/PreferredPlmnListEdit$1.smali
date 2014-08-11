.class Lcom/android/phone/PreferredPlmnListEdit$1;
.super Landroid/os/Handler;
.source "PreferredPlmnListEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredPlmnListEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredPlmnListEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredPlmnListEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PreferredPlmnListEdit;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 109
    .local v8, ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    invoke-virtual {v0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "PreferredPlmnListEdit"

    const-string v1, "fail to delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #calls: Lcom/android/phone/PreferredPlmnListEdit;->displayfailedmessage()V
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$100(Lcom/android/phone/PreferredPlmnListEdit;)V

    goto :goto_0

    .line 118
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 119
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$200(Lcom/android/phone/PreferredPlmnListEdit;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 121
    .local v7, newmsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    iget-object v0, v0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I
    invoke-static {v1}, Lcom/android/phone/PreferredPlmnListEdit;->access$300(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PreferredPlmnListEdit;->access$400(Lcom/android/phone/PreferredPlmnListEdit;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I
    invoke-static {v4}, Lcom/android/phone/PreferredPlmnListEdit;->access$500(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I
    invoke-static {v5}, Lcom/android/phone/PreferredPlmnListEdit;->access$600(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I
    invoke-static {v6}, Lcom/android/phone/PreferredPlmnListEdit;->access$700(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    goto :goto_0

    .line 131
    .end local v7           #newmsg:Landroid/os/Message;
    :cond_1
    const-string v0, "PreferredPlmnListEdit"

    const-string v1, "fail to save/delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/phone/PreferredPlmnListEdit;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #calls: Lcom/android/phone/PreferredPlmnListEdit;->displayfailedmessage()V
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$100(Lcom/android/phone/PreferredPlmnListEdit;)V

    goto :goto_0

    .line 138
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PreferredPlmnListEdit;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 140
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$200(Lcom/android/phone/PreferredPlmnListEdit;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 142
    .restart local v7       #newmsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    iget-object v0, v0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I
    invoke-static {v1}, Lcom/android/phone/PreferredPlmnListEdit;->access$300(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PreferredPlmnListEdit;->access$800(Lcom/android/phone/PreferredPlmnListEdit;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I
    invoke-static {v4}, Lcom/android/phone/PreferredPlmnListEdit;->access$500(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I
    invoke-static {v5}, Lcom/android/phone/PreferredPlmnListEdit;->access$600(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #getter for: Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I
    invoke-static {v6}, Lcom/android/phone/PreferredPlmnListEdit;->access$700(Lcom/android/phone/PreferredPlmnListEdit;)I

    move-result v6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 152
    .end local v7           #newmsg:Landroid/os/Message;
    :cond_2
    const-string v0, "PreferredPlmnListEdit"

    const-string v1, "fail to save"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #calls: Lcom/android/phone/PreferredPlmnListEdit;->displayfailedmessage()V
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$100(Lcom/android/phone/PreferredPlmnListEdit;)V

    goto/16 :goto_0

    .line 158
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    invoke-static {}, Lcom/android/phone/PreferredPlmnListEdit;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 160
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    invoke-virtual {v0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    goto/16 :goto_0

    .line 163
    :cond_3
    const-string v0, "PreferredPlmnListEdit"

    const-string v1, "fail to save name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit$1;->this$0:Lcom/android/phone/PreferredPlmnListEdit;

    #calls: Lcom/android/phone/PreferredPlmnListEdit;->displayfailedmessage()V
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnListEdit;->access$100(Lcom/android/phone/PreferredPlmnListEdit;)V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
