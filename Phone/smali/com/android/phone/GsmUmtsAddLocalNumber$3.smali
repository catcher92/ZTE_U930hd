.class Lcom/android/phone/GsmUmtsAddLocalNumber$3;
.super Ljava/lang/Object;
.source "GsmUmtsAddLocalNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAddLocalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$3;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 252
    const-string v0, "GsmUmtsAddLocalNumber"

    const-string v1, "$$$$ mCancelClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$3;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->finish()V

    .line 257
    return-void
.end method
