.class public Lcom/android/phone/GsmUmtsAddLocalNumber;
.super Landroid/app/Activity;
.source "GsmUmtsAddLocalNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;
    }
.end annotation


# static fields
.field private static mNameMaxLen:I

.field private static mNumberMaxLen:I


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mCancelClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

.field private mPhoneName:Landroid/widget/EditText;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSaveClicked:Landroid/view/View$OnClickListener;

.field mSharedPreflInfo:Landroid/content/SharedPreferences;

.field private nameValue:Ljava/lang/String;

.field private numberValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0xe

    sput v0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mNameMaxLen:I

    .line 87
    const/16 v0, 0x14

    sput v0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mNumberMaxLen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    new-instance v0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAddLocalNumber$2;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSaveClicked:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/android/phone/GsmUmtsAddLocalNumber$3;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAddLocalNumber$3;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mCancelClicked:Landroid/view/View$OnClickListener;

    .line 260
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mNumberMaxLen:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mNameMaxLen:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/GsmUmtsAddLocalNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/GsmUmtsAddLocalNumber;)Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mHandler:Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/GsmUmtsAddLocalNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/GsmUmtsAddLocalNumber;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->handleSetLine1NumberResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/GsmUmtsAddLocalNumber;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->handleSetLine1NameResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleSetLine1NameResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->setNameValues(Ljava/lang/String;)V

    .line 295
    const v2, 0x7f0c027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    const v2, 0x7f0c027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleSetLine1NumberResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 280
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->seNumberValues(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v2, "GsmUmtsAddLocalNumber"

    const-string v3, "$$$$ local number set fail !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 147
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 148
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isChinese(Ljava/lang/String;)Z
    .locals 4
    .parameter "strName"

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 136
    .local v1, ch:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 137
    aget-char v0, v1, v2

    .line 138
    .local v0, c:C
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v3, 0x1

    .line 142
    .end local v0           #c:C
    :goto_1
    return v3

    .line 136
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0           #c:C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 304
    const-string v0, "GsmUmtsAddLocalNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmUmtsAddLocalNumber] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private seNumberValues(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 191
    const-string v1, "GsmUmtsAddLocalNumber"

    const-string v2, "$$$$ seNumberValues"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, "local_name_shared_pref_key"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    .line 193
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "localnumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method private setNameValues(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 183
    const-string v1, "GsmUmtsAddLocalNumber"

    const-string v2, "$$$$ setNameValues"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "local_name_shared_pref_key"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    .line 185
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "localname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method private setupView()V
    .locals 5

    .prologue
    .line 198
    const-string v2, "GsmUmtsAddLocalNumber"

    const-string v3, "$$$$ setupView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;

    .line 201
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;

    .line 203
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSaveBtn:Landroid/widget/Button;

    .line 204
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSaveBtn:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 205
    const-string v2, "GsmUmtsAddLocalNumber"

    const-string v3, "$$$$ mSaveBtn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSaveBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSaveClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :goto_0
    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mCancelBtn:Landroid/widget/Button;

    .line 212
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mCancelBtn:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mCancelBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mCancelClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, name:Ljava/lang/String;
    const-string v2, "GsmUmtsAddLocalNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ name ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 223
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, number:Ljava/lang/String;
    const-string v2, "GsmUmtsAddLocalNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ number ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    return-void

    .line 208
    :cond_3
    const-string v2, "GsmUmtsAddLocalNumber"

    const-string v3, "$$$$ mSaveBtn-null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v1, "GsmUmtsAddLocalNumber"

    const-string v2, "$$$$ onCreate ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->setContentView(I)V

    .line 95
    new-instance v1, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber;Lcom/android/phone/GsmUmtsAddLocalNumber$1;)V

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mHandler:Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

    .line 96
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->setupView()V

    .line 99
    const-string v1, "GsmUmtsAddLocalNumber"

    const-string v2, "$$$$ Thread ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/GsmUmtsAddLocalNumber$1;

    invoke-direct {v2, p0}, Lcom/android/phone/GsmUmtsAddLocalNumber$1;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 128
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 310
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 311
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 312
    const/4 v1, 0x1

    .line 314
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v2, "$$$$ onResume ..."

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->log(Ljava/lang/String;)V

    .line 165
    const-string v2, "local_name_shared_pref_key"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/GsmUmtsAddLocalNumber;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    .line 166
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    const-string v3, "localname"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber;->mSharedPreflInfo:Landroid/content/SharedPreferences;

    const-string v3, "localnumber"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, number:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ onResume ...name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "| number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->log(Ljava/lang/String;)V

    .line 181
    return-void
.end method
