.class Lzte/com/cn/numberlocator/NumberLocatorActivity$3;
.super Ljava/lang/Object;
.source "NumberLocatorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 128
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 132
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, filterIput:Ljava/lang/String;
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, filter:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, ""

    iget-object v6, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v6}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v6}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 144
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 150
    :goto_0
    const-string v5, "0086"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "+86"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    :cond_0
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v5, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->queryNumLocation(Ljava/lang/String;)V

    .line 189
    :cond_1
    :goto_1
    return-void

    .line 146
    :cond_2
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v6}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 147
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    const/high16 v6, 0x41f0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 157
    :cond_3
    const-string v5, "+86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_4
    const-string v5, "0086"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_5
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 165
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_6
    const-string v5, "17951"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_7
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 174
    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 177
    .local v2, len:I
    if-lez v2, :cond_1

    .line 181
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, origninput:Ljava/lang/String;
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, orign:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 184
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_9
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v5, v3}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->queryNumLocation(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
