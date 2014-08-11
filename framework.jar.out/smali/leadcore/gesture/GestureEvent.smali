.class public final Lleadcore/gesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleadcore/gesture/GestureEvent$Obtain;,
        Lleadcore/gesture/GestureEvent$GestureType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lleadcore/gesture/GestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static gObtain:Lleadcore/gesture/GestureEvent$Obtain;


# instance fields
.field private bOutside:Z

.field private mAngle:F

.field private mCentX:F

.field private mCentY:F

.field private mSpeed:F

.field private mType:I

.field private next:Lleadcore/gesture/GestureEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lleadcore/gesture/GestureEvent$Obtain;

    invoke-direct {v0}, Lleadcore/gesture/GestureEvent$Obtain;-><init>()V

    sput-object v0, Lleadcore/gesture/GestureEvent;->gObtain:Lleadcore/gesture/GestureEvent$Obtain;

    .line 69
    new-instance v0, Lleadcore/gesture/GestureEvent$1;

    invoke-direct {v0}, Lleadcore/gesture/GestureEvent$1;-><init>()V

    sput-object v0, Lleadcore/gesture/GestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lleadcore/gesture/GestureEvent$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    invoke-direct {p0}, Lleadcore/gesture/GestureEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lleadcore/gesture/GestureEvent$Obtain;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lleadcore/gesture/GestureEvent;->gObtain:Lleadcore/gesture/GestureEvent$Obtain;

    return-object v0
.end method

.method static synthetic access$100(Lleadcore/gesture/GestureEvent;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lleadcore/gesture/GestureEvent;->init(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Lleadcore/gesture/GestureEvent;)Lleadcore/gesture/GestureEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lleadcore/gesture/GestureEvent;->next:Lleadcore/gesture/GestureEvent;

    return-object v0
.end method

.method static synthetic access$202(Lleadcore/gesture/GestureEvent;Lleadcore/gesture/GestureEvent;)Lleadcore/gesture/GestureEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lleadcore/gesture/GestureEvent;->next:Lleadcore/gesture/GestureEvent;

    return-object p1
.end method

.method private init(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureEvent;->mType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureEvent;->mAngle:F

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureEvent;->mCentX:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureEvent;->mCentY:F

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lleadcore/gesture/GestureEvent;->bOutside:Z

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;
    .locals 2
    .parameter "type"
    .parameter "speed"
    .parameter "cX"
    .parameter "cY"
    .parameter "angle"
    .parameter "outside"

    .prologue
    .line 39
    sget-object v1, Lleadcore/gesture/GestureEvent;->gObtain:Lleadcore/gesture/GestureEvent$Obtain;

    invoke-virtual {v1}, Lleadcore/gesture/GestureEvent$Obtain;->obtain()Lleadcore/gesture/GestureEvent;

    move-result-object v0

    .line 40
    .local v0, ev:Lleadcore/gesture/GestureEvent;
    iput p0, v0, Lleadcore/gesture/GestureEvent;->mType:I

    .line 41
    iput p1, v0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    .line 42
    iput p2, v0, Lleadcore/gesture/GestureEvent;->mCentX:F

    .line 43
    iput p3, v0, Lleadcore/gesture/GestureEvent;->mCentY:F

    .line 44
    iput-boolean p5, v0, Lleadcore/gesture/GestureEvent;->bOutside:Z

    .line 45
    iput p4, v0, Lleadcore/gesture/GestureEvent;->mAngle:F

    .line 46
    return-object v0
.end method


# virtual methods
.method public centerX()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mCentX:F

    return v0
.end method

.method public centerY()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mCentY:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mAngle:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mType:I

    return v0
.end method

.method public isOutsideSrc()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lleadcore/gesture/GestureEvent;->bOutside:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lleadcore/gesture/GestureEvent;->gObtain:Lleadcore/gesture/GestureEvent$Obtain;

    invoke-virtual {v0, p0}, Lleadcore/gesture/GestureEvent$Obtain;->recycle(Lleadcore/gesture/GestureEvent;)V

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lleadcore/gesture/GestureEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lleadcore/gesture/GestureEvent;->mCentX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lleadcore/gesture/GestureEvent;->mCentY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale/speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lleadcore/gesture/GestureEvent;->mAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lleadcore/gesture/GestureEvent;->bOutside:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "parcelFlag"

    .prologue
    .line 87
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 89
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 90
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mCentX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    iget v0, p0, Lleadcore/gesture/GestureEvent;->mCentY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 92
    iget-boolean v0, p0, Lleadcore/gesture/GestureEvent;->bOutside:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
