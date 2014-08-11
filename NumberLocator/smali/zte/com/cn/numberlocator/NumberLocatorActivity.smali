.class public Lzte/com/cn/numberlocator/NumberLocatorActivity;
.super Landroid/app/Activity;
.source "NumberLocatorActivity.java"


# instance fields
.field private content:Landroid/content/ContentResolver;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listItemAdapter:Landroid/widget/SimpleAdapter;

.field private listTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearTextButton:Landroid/widget/Button;

.field private mErrorPhoneNumber:Landroid/widget/TextView;

.field mIMManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLawTextView:Landroid/widget/TextView;

.field private mNuminput:Landroid/widget/EditText;

.field private resultListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleErrorNum()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->clearAllText()V

    .line 345
    return-void
.end method


# virtual methods
.method protected clearAllText()V
    .locals 6

    .prologue
    .line 329
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 331
    .local v1, itemsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 332
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 333
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 336
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 337
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->content:Landroid/content/ContentResolver;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->resultListView:Landroid/widget/ListView;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 74
    .local v10, titlesize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 75
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "title"

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    const/high16 v3, 0x7f03

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v12

    const-string v1, "text"

    aput-object v1, v4, v11

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    .line 84
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->resultListView:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mClearTextButton:Landroid/widget/Button;

    .line 87
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mLawTextView:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mLawTextView:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-array v1, v11, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 92
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 93
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setClickable(Z)V

    .line 94
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 95
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 96
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 109
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$1;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$1;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mClearTextButton:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 192
    .local v6, bunde:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 193
    const-string v0, "phonenum"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, num:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 198
    .end local v9           #num:Ljava/lang/String;
    :cond_1
    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected queryNumLocation(Ljava/lang/String;)V
    .locals 21
    .parameter "input"

    .prologue
    .line 229
    move-object/from16 v18, p1

    .line 230
    .local v18, origninput:Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 231
    :cond_0
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->handleErrorNum()V

    .line 235
    :cond_1
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 236
    const/4 v1, 0x0

    const-string v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 239
    :cond_2
    sget-object v1, Lzte/com/cn/numberlocator/NumberLocator$Locator;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    .local v2, locatorurl:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->content:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 242
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 243
    :cond_3
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->handleErrorNum()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v13, :cond_4

    .line 322
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_4
    :goto_0
    return-void

    .line 247
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 249
    const/16 v19, 0x0

    .line 250
    .local v19, phonenum:Ljava/lang/String;
    const/4 v11, 0x0

    .line 251
    .local v11, cityname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 252
    .local v9, cardtype:Ljava/lang/String;
    const/4 v7, 0x0

    .line 254
    .local v7, areacode:Ljava/lang/String;
    const/16 v20, 0x0

    .line 256
    .local v20, specialNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 257
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 259
    const-string v1, "cityname"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 260
    .local v12, citynameColumn:I
    const-string v1, "cardtype"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 261
    .local v10, cardtypeColumn:I
    const-string v1, "areacode"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 266
    .local v8, areacodeColumn:I
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 267
    const/4 v1, -0x1

    if-eq v1, v10, :cond_6

    .line 268
    new-instance v1, Ljava/lang/String;

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 272
    :goto_1
    const-string v1, "zhw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quryNumLocator cardtype=:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :goto_2
    :try_start_3
    const-string v1, "fixedphone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 297
    .local v16, itemsize:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    .local v17, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch v15, :pswitch_data_0

    .line 297
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 270
    .end local v15           #i:I
    .end local v16           #itemsize:I
    .end local v17           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :try_start_4
    const-string v9, "china"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v14

    .line 274
    .local v14, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-virtual {v14}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 321
    .end local v7           #areacode:Ljava/lang/String;
    .end local v8           #areacodeColumn:I
    .end local v9           #cardtype:Ljava/lang/String;
    .end local v10           #cardtypeColumn:I
    .end local v11           #cityname:Ljava/lang/String;
    .end local v12           #citynameColumn:I
    .end local v14           #e:Ljava/io/UnsupportedEncodingException;
    .end local v19           #phonenum:Ljava/lang/String;
    .end local v20           #specialNum:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_7

    .line 322
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 282
    .restart local v7       #areacode:Ljava/lang/String;
    .restart local v8       #areacodeColumn:I
    .restart local v9       #cardtype:Ljava/lang/String;
    .restart local v10       #cardtypeColumn:I
    .restart local v11       #cityname:Ljava/lang/String;
    .restart local v12       #citynameColumn:I
    .restart local v19       #phonenum:Ljava/lang/String;
    .restart local v20       #specialNum:Ljava/lang/String;
    :cond_8
    :try_start_6
    const-string v1, "intlphone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 288
    :cond_9
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 289
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 290
    :cond_a
    const-string v7, ""

    goto :goto_3

    .line 292
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 311
    .restart local v15       #i:I
    .restart local v16       #itemsize:I
    .restart local v17       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_0
    const-string v1, "text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 314
    :pswitch_1
    const-string v1, "text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 318
    .end local v17           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 321
    .end local v8           #areacodeColumn:I
    .end local v10           #cardtypeColumn:I
    .end local v12           #citynameColumn:I
    .end local v15           #i:I
    .end local v16           #itemsize:I
    :cond_d
    if-eqz v13, :cond_4

    .line 322
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
