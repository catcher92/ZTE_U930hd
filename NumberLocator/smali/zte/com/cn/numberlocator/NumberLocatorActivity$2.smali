.class Lzte/com/cn/numberlocator/NumberLocatorActivity$2;
.super Ljava/lang/Object;
.source "NumberLocatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/numberlocator/NumberLocatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 120
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->clearAllText()V

    .line 121
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v1}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 124
    return-void
.end method
