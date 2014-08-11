.class Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContactsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportAllSimContactsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContactsService;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContactsService;)V
    .locals 1
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    .line 750
    const-string v0, "ImportAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 757
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->getContext()Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/SimContactsService;->access$100(Lcom/android/phone/SimContactsService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.intent.action.SIM_SYNC_START"

    #calls: Lcom/android/phone/SimContactsService;->sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/SimContactsService;->access$200(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v6}, Lcom/android/phone/SimContactsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 760
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v6, v6, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v6, v6, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 761
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #getter for: Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/SimContactsService;->access$300(Lcom/android/phone/SimContactsService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 762
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v6, v6, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 763
    :goto_0
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v6, v6, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 765
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, v7, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #getter for: Lcom/android/phone/SimContactsService;->mAccount:Landroid/accounts/Account;
    invoke-static {v8}, Lcom/android/phone/SimContactsService;->access$400(Lcom/android/phone/SimContactsService;)Landroid/accounts/Account;

    move-result-object v8

    #calls: Lcom/android/phone/SimContactsService;->addOneCardContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    invoke-static {v6, v7, v5, v8}, Lcom/android/phone/SimContactsService;->access$500(Lcom/android/phone/SimContactsService;Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v7}, Lcom/android/phone/SimContactsService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/phone/SimContactsService;->getLastSIM_ICCID(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/SimContactsService;->access$600(Lcom/android/phone/SimContactsService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, last_iccid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v7}, Lcom/android/phone/SimContactsService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/phone/SimContactsService;->readICCIDFromPhone(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/SimContactsService;->access$700(Lcom/android/phone/SimContactsService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, current_iccid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICCID: last_iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " current_iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 774
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v7}, Lcom/android/phone/SimContactsService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/phone/SimContactsService;->isSIMChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v7, v3, v0}, Lcom/android/phone/SimContactsService;->access$800(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 776
    .local v2, ischanged:Z
    const-string v6, ""

    if-ne v0, v6, :cond_1

    .line 777
    const/4 v2, 0x0

    .line 779
    :cond_1
    if-eqz v2, :cond_2

    .line 780
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v7}, Lcom/android/phone/SimContactsService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/phone/SimContactsService;->setSIM_ICCID(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v6, v7, v0}, Lcom/android/phone/SimContactsService;->access$900(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;)Z

    .line 782
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :try_start_0
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "sim_phone_storage_type=1"

    const/4 v8, 0x0

    #invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #move-result v4
    
    const/4 v4, 0x0

    .line 786
    .local v4, res:I
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===> delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dirty SIM record(s) from data base"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 788
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->insertCardContacts(Landroid/content/ContentResolver;)I
    invoke-static {v6, v5}, Lcom/android/phone/SimContactsService;->access$1000(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v4           #res:I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    iget-object v7, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->getContext()Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/SimContactsService;->access$100(Lcom/android/phone/SimContactsService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.intent.action.SIM_SYNC_END"

    #calls: Lcom/android/phone/SimContactsService;->sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/SimContactsService;->access$200(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;)V

    .line 814
    return-void

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 792
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const-string v7, "sim_inserting"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    const-string v7, "SimContactsService"

    const-string v8, "sim_inserting = 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v6

    .line 797
    :cond_2
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 798
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->handleAllCardContacts(Landroid/content/ContentResolver;)V
    invoke-static {v6, v5}, Lcom/android/phone/SimContactsService;->access$1100(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 805
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :catch_1
    move-exception v1

    .line 803
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 805
    const-string v6, "sim_inserting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    const-string v6, "SimContactsService"

    const-string v7, "sim_inserting = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 805
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    const-string v7, "sim_inserting"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    const-string v7, "SimContactsService"

    const-string v8, "sim_inserting = 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v6
.end method
