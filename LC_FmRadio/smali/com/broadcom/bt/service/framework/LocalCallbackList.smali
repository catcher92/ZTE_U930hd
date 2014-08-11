.class public Lcom/broadcom/bt/service/framework/LocalCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "LocalCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Lcom/broadcom/bt/service/framework/LocalCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private mKilled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mKilled:Z

    .line 46
    return-void
.end method


# virtual methods
.method public beginBroadcast()I
    .locals 9

    .prologue
    .line 186
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    iget-object v7, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v7

    .line 187
    :try_start_0
    iget v6, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    if-lez v6, :cond_0

    .line 188
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 205
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 192
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    .line 193
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 194
    const/4 v4, 0x0

    monitor-exit v7

    .line 204
    :goto_0
    return v4

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 197
    .local v1, active:[Ljava/lang/Object;
    if-eqz v1, :cond_2

    array-length v6, v1

    if-ge v6, v0, :cond_3

    .line 198
    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 200
    :cond_3
    const/4 v3, 0x0

    .line 201
    .local v3, i:I
    iget-object v6, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    .line 202
    .local v2, cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aput-object v2, v1, v4

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 204
    .end local v2           #cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public finishBroadcast()V
    .locals 5

    .prologue
    .line 251
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    iget v3, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    if-gez v3, :cond_0

    .line 252
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 257
    .local v1, active:[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 258
    iget v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    .line 259
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 260
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mBroadcastCount:I

    .line 265
    return-void
.end method

.method public getBroadcastCookie(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 240
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public kill()V
    .locals 5

    .prologue
    .line 144
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    .line 146
    .local v0, cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    iget-object v2, v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 150
    .end local v0           #cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 148
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mKilled:Z

    .line 150
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    return-void
.end method

.method public register(Landroid/os/IInterface;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/framework/LocalCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-boolean v4, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mKilled:Z

    if-eqz v4, :cond_0

    .line 96
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    return v2

    .line 99
    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;-><init>(Lcom/broadcom/bt/service/framework/LocalCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 100
    .local v0, cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    iget-object v4, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 105
    .end local v0           #cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Throwable;
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/broadcom/bt/service/framework/LocalCallbackList;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/LocalCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;

    .line 128
    .local v0, cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x1

    monitor-exit v2

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 132
    .end local v0           #cb:Lcom/broadcom/bt/service/framework/LocalCallbackList$Callback;,"Lcom/broadcom/bt/service/framework/LocalCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
