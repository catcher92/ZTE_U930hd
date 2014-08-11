.class public Lcom/android/phone/GetPassword;
.super Landroid/app/Activity;
.source "GetPassword.java"


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lcom/android/phone/GetPassword$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPassword$1;-><init>(Lcom/android/phone/GetPassword;)V

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mClicked:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/android/phone/GetPassword$2;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPassword$2;-><init>(Lcom/android/phone/GetPassword;)V

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/GetPassword;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/GetPassword;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GetPassword;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/GetPassword;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/GetPassword;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/GetPassword;->returnResult()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 152
    const-string v0, "GetPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetPassword] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 79
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "old"

    iget-object v5, p0, Lcom/android/phone/GetPassword;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "new"

    iget-object v5, p0, Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/GetPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPassword;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/GetPassword;->finish()V

    .line 90
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->InitEditText(I)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mOldPassword:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->InitEditText(I)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->InitEditText(I)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mConfirmPassword:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mButtonOk:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/android/phone/GetPassword;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPassword;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPassword;->mButtonCancel:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/android/phone/GetPassword;->mButtonCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPassword;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method CreateRetryDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c032f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0333

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032d

    new-instance v2, Lcom/android/phone/GetPassword$3;

    invoke-direct {v2, p0}, Lcom/android/phone/GetPassword$3;-><init>(Lcom/android/phone/GetPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method InitEditText(I)Landroid/widget/EditText;
    .locals 5
    .parameter "resId"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/phone/GetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 58
    .local v0, view:Landroid/widget/EditText;
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPassword;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/android/phone/GetPassword;->setupView()V

    .line 53
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/GetPassword;->CreateRetryDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
