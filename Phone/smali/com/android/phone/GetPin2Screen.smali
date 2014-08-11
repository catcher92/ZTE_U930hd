.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/app/Activity;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;
    }
.end annotation


# static fields
.field private static DEFAULT_LEFTTIMES:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCheckPin2Unit:Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mConnector:Lcom/android/phone/RilConnector;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2Field:Landroid/widget/EditText;

.field private mRetryTimes:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/GetPin2Screen;->DEFAULT_LEFTTIMES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 236
    new-instance v0, Lcom/android/phone/GetPin2Screen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$1;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v0, Lcom/android/phone/GetPin2Screen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$2;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckResult()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "PhoneApp"

    const-string v1, "CheckResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mCheckPin2Unit:Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;->Get()Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/GetPin2Screen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/GetPin2Screen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->CheckResult()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 224
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 230
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 234
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "PhoneApp"

    const-string v1, "setupView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->GetTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    .line 200
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 204
    :cond_0
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonOk:Landroid/widget/Button;

    .line 205
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonCancel:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method GetTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 172
    const-string v2, "PhoneApp"

    const-string v3, "GetTitle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 174
    iget v2, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    if-lez v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c034c

    invoke-virtual {p0, v3}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0358

    invoke-virtual {p0, v3}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, title:Ljava/lang/String;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, intent1:Landroid/content/Intent;
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method OnCorrectPin2Code()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "PhoneApp"

    const-string v1, "OnCorrectPin2Code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    .line 168
    return-void
.end method

.method OnErrorPin2Code()V
    .locals 5

    .prologue
    .line 151
    const-string v0, "PhoneApp"

    const-string v1, "OnErrorPin2Code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0347

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->OnGetPinFailed()V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c013f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->GetTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method OnGetPinFailed()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 121
    const-string v0, "PhoneApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->setContentView(I)V

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    new-instance v0, Lcom/android/phone/RilConnector;

    invoke-direct {v0}, Lcom/android/phone/RilConnector;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mConnector:Lcom/android/phone/RilConnector;

    .line 128
    new-instance v0, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;-><init>(Lcom/android/phone/GetPin2Screen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mCheckPin2Unit:Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;

    .line 129
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mConnector:Lcom/android/phone/RilConnector;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mCheckPin2Unit:Lcom/android/phone/GetPin2Screen$SupplyPin2Cmd;

    invoke-virtual {v0, v1}, Lcom/android/phone/RilConnector;->AddRilUnit(Lcom/android/phone/RilUnit;)V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    const-string v0, "PhoneApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 139
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->setupView()V

    .line 141
    return-void
.end method
