.class final Lcom/android/phone/PhoneInterfaceManager$Paramter;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Paramter"
.end annotation


# instance fields
.field public arg1:Ljava/lang/String;

.field public arg2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg1:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg2:Ljava/lang/String;

    .line 98
    return-void
.end method
