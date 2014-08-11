.class Lcom/android/phone/SpeedDialList$5;
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
    .line 411
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$5;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$5;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-static {}, Lcom/android/phone/SpeedDialList;->access$800()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SpeedDialList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    return-void
.end method
