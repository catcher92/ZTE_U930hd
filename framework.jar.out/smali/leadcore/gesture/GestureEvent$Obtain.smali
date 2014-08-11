.class Lleadcore/gesture/GestureEvent$Obtain;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/gesture/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Obtain"
.end annotation


# instance fields
.field private freetop:Lleadcore/gesture/GestureEvent;

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lleadcore/gesture/GestureEvent$Obtain;->obj:Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public obtain()Lleadcore/gesture/GestureEvent;
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lleadcore/gesture/GestureEvent$Obtain;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    .line 120
    .local v0, ret:Lleadcore/gesture/GestureEvent;
    iget-object v1, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    #getter for: Lleadcore/gesture/GestureEvent;->next:Lleadcore/gesture/GestureEvent;
    invoke-static {v1}, Lleadcore/gesture/GestureEvent;->access$200(Lleadcore/gesture/GestureEvent;)Lleadcore/gesture/GestureEvent;

    move-result-object v1

    iput-object v1, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    .line 121
    monitor-exit v2

    .line 125
    .end local v0           #ret:Lleadcore/gesture/GestureEvent;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lleadcore/gesture/GestureEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lleadcore/gesture/GestureEvent;-><init>(Lleadcore/gesture/GestureEvent$1;)V

    monitor-exit v2

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle(Lleadcore/gesture/GestureEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 131
    iget-object v1, p0, Lleadcore/gesture/GestureEvent$Obtain;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    #setter for: Lleadcore/gesture/GestureEvent;->next:Lleadcore/gesture/GestureEvent;
    invoke-static {p1, v0}, Lleadcore/gesture/GestureEvent;->access$202(Lleadcore/gesture/GestureEvent;Lleadcore/gesture/GestureEvent;)Lleadcore/gesture/GestureEvent;

    .line 137
    :cond_0
    iput-object p1, p0, Lleadcore/gesture/GestureEvent$Obtain;->freetop:Lleadcore/gesture/GestureEvent;

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
