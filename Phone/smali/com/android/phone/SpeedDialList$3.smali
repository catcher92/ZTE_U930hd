.class Lcom/android/phone/SpeedDialList$3;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpeedDialList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMaxNumber:I

.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$3;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$3;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SpeedDialMode;->getEditViewMaxLen()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SpeedDialList$3;->mMaxNumber:I

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
    .line 151
    iget v1, p0, Lcom/android/phone/SpeedDialList$3;->mMaxNumber:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 153
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 154
    const-string v1, ""

    .line 156
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "p"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
