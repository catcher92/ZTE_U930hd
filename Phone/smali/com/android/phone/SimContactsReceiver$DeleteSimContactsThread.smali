.class Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContactsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteSimContactsThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/SimContactsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContactsReceiver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->this$0:Lcom/android/phone/SimContactsReceiver;

    .line 128
    const-string v0, "DeleteSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->this$0:Lcom/android/phone/SimContactsReceiver;

    iget-object v3, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    const-string v4, "android.intent.action.SIM_SYNC_START"

    #calls: Lcom/android/phone/SimContactsReceiver;->sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/SimContactsReceiver;->access$000(Lcom/android/phone/SimContactsReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_deleting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string v2, "SimContactsReceiver"

    const-string v3, "sim_deleting=1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sim_phone_storage_type=1"

    const/4 v4, 0x0

    #invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #move-result v0
    
    const/4 v0, 0x0

    .line 142
    .local v0, res:I
    const-string v2, "SimContactsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====> delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dirty SIM record(s) from data base"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_deleting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const-string v2, "SimContactsReceiver"

    const-string v3, "sim_deleting=0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->this$0:Lcom/android/phone/SimContactsReceiver;

    iget-object v3, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    const-string v4, "android.intent.action.SIM_SYNC_END"

    #calls: Lcom/android/phone/SimContactsReceiver;->sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/SimContactsReceiver;->access$000(Lcom/android/phone/SimContactsReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    return-void

    .line 144
    .end local v0           #res:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/phone/SimContactsReceiver$DeleteSimContactsThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_deleting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    throw v2
.end method
