.class final Lleadcore/gesture/GestureEvent$1;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/gesture/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lleadcore/gesture/GestureEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lleadcore/gesture/GestureEvent$1;->createFromParcel(Landroid/os/Parcel;)Lleadcore/gesture/GestureEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lleadcore/gesture/GestureEvent;
    .locals 2
    .parameter "in"

    .prologue
    .line 72
    invoke-static {}, Lleadcore/gesture/GestureEvent;->access$000()Lleadcore/gesture/GestureEvent$Obtain;

    move-result-object v1

    invoke-virtual {v1}, Lleadcore/gesture/GestureEvent$Obtain;->obtain()Lleadcore/gesture/GestureEvent;

    move-result-object v0

    .line 73
    .local v0, ev:Lleadcore/gesture/GestureEvent;
    #calls: Lleadcore/gesture/GestureEvent;->init(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Lleadcore/gesture/GestureEvent;->access$100(Lleadcore/gesture/GestureEvent;Landroid/os/Parcel;)V

    .line 74
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lleadcore/gesture/GestureEvent$1;->newArray(I)[Lleadcore/gesture/GestureEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lleadcore/gesture/GestureEvent;
    .locals 1
    .parameter "size"

    .prologue
    .line 78
    new-array v0, p1, [Lleadcore/gesture/GestureEvent;

    return-object v0
.end method
