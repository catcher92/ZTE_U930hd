.class Lcom/android/phone/SpeedDialList$8;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpeedDialList;->createClickDelMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$8;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$8;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialList;->dismissDialog(I)V

    .line 473
    return-void
.end method