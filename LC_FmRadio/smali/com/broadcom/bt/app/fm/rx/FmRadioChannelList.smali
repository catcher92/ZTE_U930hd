.class public Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;
.super Landroid/app/ListActivity;
.source "FmRadioChannelList.java"


# static fields
.field private static final DIALOG_ID_EDIT_CHANNEL:I = 0x0

.field private static final DIALOG_ID_EDIT_CHANNEL_FAIL:I = 0x1

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final MENU_ID_PLAY:I = 0x0

.field private static final MENU_ID_SAVE:I = 0x2

.field private static final NUM_OF_CHANNELS:I = 0x32

.field private static final channelListItem:Ljava/lang/String; = "channellist_item"

.field private static final channelNameKey:Ljava/lang/String; = "channel_name"

.field private static final currentFreqKey:Ljava/lang/String; = "current_freq"

.field private static final freqPreferenceKey:Ljava/lang/String; = "channel"

.field private static mSharedPrefs:Landroid/content/SharedPreferences;


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mChannelName:Landroid/widget/EditText;

.field private mChannels:[I

.field private mCurrentFreq:I

.field private mListView:Landroid/widget/ListView;

.field private mSelectedFreq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    .line 58
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    .line 59
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    .line 71
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannels:[I

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    return v0
.end method

.method static synthetic access$102(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    return p1
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    return v0
.end method

.method static synthetic access$202(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    return p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannelName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getSaveLoc(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->saveChannelName(ILjava/lang/String;)V

    return-void
.end method

.method private createEditChannelDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    .line 276
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f02002a

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 278
    const v8, 0x7f090088

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 280
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 281
    .local v5, layout:Landroid/widget/LinearLayout;
    const v8, 0x7f07004b

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannelName:Landroid/widget/EditText;

    .line 282
    iget v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    invoke-direct {p0, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getSaveLoc(I)I

    move-result v6

    .line 283
    .local v6, loc:I
    sget-object v8, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "channel_name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v8, 0x7f07004d

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 287
    .local v2, btnOK:Landroid/widget/Button;
    new-instance v8, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;

    invoke-direct {v8, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v8, 0x7f07004e

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 303
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v8, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$4;

    invoke-direct {v8, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$4;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 310
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 311
    return-object v0
.end method

.method private getChannels()V
    .locals 5

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, loc:I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannels:[I

    sget-object v2, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channellist_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 248
    const-string v1, "FmRadioChannelList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannels channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannels:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private getSaveLoc(I)I
    .locals 2
    .parameter "freq"

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, loc:I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannels:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 240
    :cond_0
    return v0

    .line 236
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private prepareData()V
    .locals 8

    .prologue
    .line 131
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, itemFreq:I
    const/4 v1, 0x1

    .line 142
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_1
    const/16 v5, 0x32

    if-ge v0, v5, :cond_4

    .line 144
    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channellist_item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 146
    if-nez v4, :cond_2

    move v1, v2

    .line 142
    .end local v2           #index:I
    .restart local v1       #index:I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 148
    :cond_2
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 149
    .local v3, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    if-ne v5, v4, :cond_3

    .line 150
    const-string v5, "icon"

    const v6, 0x7f020027

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_3
    const-string v5, "name"

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v5, "frequency"

    int-to-float v6, v4

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_3
    const-string v5, "icon"

    const v6, 0x7f02001f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 161
    .end local v3           #item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v5}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private saveChannelName(ILjava/lang/String;)V
    .locals 3
    .parameter "location"
    .parameter "name"

    .prologue
    .line 315
    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void
.end method

.method public static setSharedPrefs(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "sharedPrefs"

    .prologue
    .line 231
    sput-object p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 232
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x1b

    const/4 v8, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 170
    .local v2, item_id:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 172
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const-string v4, "FmRadioChannelList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onContextItemSelected id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    packed-switch v2, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 177
    :pswitch_0
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    invoke-direct {p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getSaveLoc(I)I

    move-result v3

    .line 179
    .local v3, position:I
    const-string v4, "FmRadioChannelList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_ID_PLAY position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channellist_item"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V

    goto :goto_0

    .line 187
    .end local v3           #position:I
    :pswitch_1
    const-string v4, "FmRadioChannelList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_ID_PLAY mSelectedFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "current_freq"

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    .line 193
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 200
    sget-object v4, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    if-ne v4, v5, :cond_3

    .line 201
    const v4, 0x7f090081

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_1
    if-ne v0, v7, :cond_0

    .line 208
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_2

    .line 209
    sget-object v4, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 213
    :cond_2
    if-ne v0, v7, :cond_5

    .line 214
    const v4, 0x7f090080

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 199
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    :cond_5
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    div-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I

    rem-int/lit8 v7, v7, 0x64

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090082

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->setContentView(I)V

    .line 76
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "icon"

    aput-object v0, v4, v7

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "frequency"

    aput-object v1, v4, v0

    .line 77
    .local v4, from:[Ljava/lang/String;
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 80
    .local v5, to:[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;

    const v3, 0x7f030005

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->adapter:Landroid/widget/SimpleAdapter;

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 86
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "CURRENT_FREQ"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I

    .line 87
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getChannels()V

    .line 88
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mListView:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V

    .line 127
    return-void

    .line 77
    :array_0
    .array-data 0x4
        0x2et 0x0t 0x7t 0x7ft
        0x2ft 0x0t 0x7t 0x7ft
        0x30t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 271
    :goto_0
    return-object v1

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->createEditChannelDialog()Landroid/app/AlertDialog;

    move-result-object v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020029

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 262
    const v2, 0x7f09007a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 263
    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 264
    const v2, 0x7f090079

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 266
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
