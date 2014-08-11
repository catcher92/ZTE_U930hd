.class Lcom/android/phone/SimContactsService$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SimContactsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContactsService;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    .line 183
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 184
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    const-string v1, "onDeleteComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/SimContactsService;->access$000(Lcom/android/phone/SimContactsService;)V

    .line 214
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    const-string v1, "onInsertComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/SimContactsService;->access$000(Lcom/android/phone/SimContactsService;)V

    .line 204
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 187
    if-nez p3, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    const-string v2, "onQueryComplete: cursor is null!"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    invoke-virtual {v1}, Lcom/android/phone/SimContactsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_inserting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete: cursor.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    iput-object p3, v1, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    .line 196
    new-instance v0, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;

    iget-object v1, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    invoke-direct {v0, v1}, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContactsService;)V

    .line 197
    .local v0, thread:Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;
    invoke-virtual {v0}, Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;->start()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    const-string v1, "onUpdateComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/phone/SimContactsService$QueryHandler;->this$0:Lcom/android/phone/SimContactsService;

    #calls: Lcom/android/phone/SimContactsService;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/SimContactsService;->access$000(Lcom/android/phone/SimContactsService;)V

    .line 209
    return-void
.end method
