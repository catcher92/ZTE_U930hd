.class Lcom/android/phone/EditFdnContactScreen$2$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$2;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$2;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$2$1;->this$1:Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Lcom/android/phone/EditFdnContactScreen;->access$100()I

    move-result v0

    iput v0, p0, Lcom/android/phone/EditFdnContactScreen$2$1;->mMax:I

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
    .line 169
    iget v1, p0, Lcom/android/phone/EditFdnContactScreen$2$1;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 170
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 171
    const-string v1, ""

    .line 173
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
