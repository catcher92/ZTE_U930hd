.class Lcom/android/phone/RedialingWaiting$1;
.super Ljava/lang/Object;
.source "RedialingWaiting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RedialingWaiting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RedialingWaiting;


# direct methods
.method constructor <init>(Lcom/android/phone/RedialingWaiting;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phone/RedialingWaiting$1;->this$0:Lcom/android/phone/RedialingWaiting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/android/phone/RedialingWaiting;->isNeedRedialing:Z

    .line 44
    sput v0, Lcom/android/phone/AutoRedialing;->autoTimes:I

    .line 45
    sget-object v0, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 46
    iget-object v0, p0, Lcom/android/phone/RedialingWaiting$1;->this$0:Lcom/android/phone/RedialingWaiting;

    invoke-virtual {v0}, Lcom/android/phone/RedialingWaiting;->finish()V

    .line 47
    return-void
.end method
