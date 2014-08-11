.class public Lleadcore/gesture/GestureEvent$GestureType;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/gesture/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureType"
.end annotation


# static fields
.field public static final ARC:I = 0x5

.field public static final CIRCLE:I = 0x6

.field public static final DOWN:I = 0x4

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final SLIDER_CLICK:I = 0xa

.field public static final SLIDER_DOUBLECLICK:I = 0xb

.field public static final SLIDER_DOWN:I = 0x9

.field public static final SLIDER_UP:I = 0x8

.field public static final UNKNOWN:I = 0x0

.field public static final UP:I = 0x3

.field public static final ZOOM:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
