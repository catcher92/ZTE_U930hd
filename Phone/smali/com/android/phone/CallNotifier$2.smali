.class Lcom/android/phone/CallNotifier$2;
.super Landroid/os/AsyncTask;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->onConfirmIncomingCall(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isBlack:Z

.field mIndex:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$2;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$2;->isBlack:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 2255
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/phone/CallNotifier$2;->mIndex:Ljava/lang/String;

    .line 2256
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$2;->mType:Ljava/lang/String;

    .line 2257
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$2;->mNumber:Ljava/lang/String;

    .line 2259
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->isBlack:Z

    .line 2260
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2248
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallNotifier$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 18
    .parameter "result"

    .prologue
    .line 2265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->mIndex:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier$2;->isBlack:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lcom/android/internal/telephony/Phone;->confirmCall(IZLandroid/os/Message;)V

    .line 2266
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier$2;->isBlack:Z

    if-eqz v2, :cond_1

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->val$mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$2;->val$mContext:Landroid/content/Context;

    const v4, 0x7f0c0272

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/16 v17, 0x1

    .line 2274
    .local v17, shouldNotlogEmergencyNumber:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$2;->mNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    .line 2276
    .local v16, isOtaNumber:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v15

    .line 2280
    .local v15, isEmergencyNumber:Z
    if-nez v16, :cond_1

    if-eqz v15, :cond_0

    if-nez v17, :cond_1

    .line 2281
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2282
    .local v7, date:J
    const-string v2, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$2;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x3

    .line 2283
    .local v6, type:I
    :goto_3
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->val$mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$2;->mNumber:Ljava/lang/String;

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const-wide/16 v9, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 2288
    .local v1, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallLog.addCall args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/CallLogAsync;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v9, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallNotifier$2;->mNumber:Ljava/lang/String;

    const/4 v12, 0x0

    move-wide v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2294
    .end local v1           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v6           #type:I
    .end local v7           #date:J
    .end local v15           #isEmergencyNumber:Z
    .end local v16           #isOtaNumber:Z
    .end local v17           #shouldNotlogEmergencyNumber:Z
    :cond_1
    return-void

    .line 2265
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2272
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2274
    .restart local v17       #shouldNotlogEmergencyNumber:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 2282
    .restart local v7       #date:J
    .restart local v15       #isEmergencyNumber:Z
    .restart local v16       #isOtaNumber:Z
    :cond_5
    const/4 v6, 0x6

    goto :goto_3
.end method
