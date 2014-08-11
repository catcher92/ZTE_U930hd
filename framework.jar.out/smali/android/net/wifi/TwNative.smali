.class public Landroid/net/wifi/TwNative;
.super Ljava/lang/Object;
.source "TwNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/TwNative$TWCallBackInterface;,
        Landroid/net/wifi/TwNative$T_Tw_Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static native TwDoCommand(ILjava/lang/String;)I
.end method

.method public static native TwInit()I
.end method

.method public static native TwRegCallback(Ljava/lang/Object;)I
.end method

.method public static native TwUnInit()I
.end method
