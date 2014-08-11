.class Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;
.super Ljava/lang/Object;
.source "GsmUmtsAddLocalNumber.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAddLocalNumber$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$1:Lcom/android/phone/GsmUmtsAddLocalNumber$1;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAddLocalNumber$1;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;->this$1:Lcom/android/phone/GsmUmtsAddLocalNumber$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$300()I

    move-result v0

    iput v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 107
    iget v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 108
    .local v0, keep:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;->mMax:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 113
    :cond_1
    if-gtz v0, :cond_2

    .line 114
    const-string v1, ""

    .line 118
    :goto_0
    return-object v1

    .line 115
    :cond_2
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_3

    .line 116
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_3
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
