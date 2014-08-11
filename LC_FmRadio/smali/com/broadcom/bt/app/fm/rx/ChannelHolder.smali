.class public Lcom/broadcom/bt/app/fm/rx/ChannelHolder;
.super Ljava/lang/Object;
.source "ChannelHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelHolder"

.field private static final WORK_FREQ:I = 0x155cc

.field private static mInstance:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;


# instance fields
.field public mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/app/fm/rx/Station;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkFreq:I

.field private mXmlParser:Lcom/broadcom/bt/app/fm/rx/XmlParser;

.field private mXmlSerial:Lcom/broadcom/bt/app/fm/rx/XmlSerial;

.field public rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mInstance:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const v5, 0x155cc

    const/4 v4, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v4, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    .line 48
    const/4 v3, 0x0

    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    .line 50
    iput-object v4, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlParser:Lcom/broadcom/bt/app/fm/rx/XmlParser;

    .line 51
    iput-object v4, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlSerial:Lcom/broadcom/bt/app/fm/rx/XmlSerial;

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    .line 71
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/XmlSerial;

    invoke-direct {v3}, Lcom/broadcom/bt/app/fm/rx/XmlSerial;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlSerial:Lcom/broadcom/bt/app/fm/rx/XmlSerial;

    .line 72
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/XmlParser;

    invoke-direct {v3}, Lcom/broadcom/bt/app/fm/rx/XmlParser;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlParser:Lcom/broadcom/bt/app/fm/rx/XmlParser;

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.broadcom.bt.app.fm.rx/files/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 78
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.broadcom.bt.app.fm.rx/files/channels.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlParser:Lcom/broadcom/bt/app/fm/rx/XmlParser;

    invoke-virtual {v3, p0}, Lcom/broadcom/bt/app/fm/rx/XmlParser;->parserXml(Lcom/broadcom/bt/app/fm/rx/ChannelHolder;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 88
    const-string v3, "ChannelHolder"

    const-string v4, "Failed to parse file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    if-nez v3, :cond_1

    .line 93
    const v3, 0x155cc

    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :try_start_1
    const-string v3, "ChannelHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    move-exception v1

    .line 101
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static BinarySearch(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter "freq"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/app/fm/rx/Station;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/app/fm/rx/Station;>;"
    const/4 v4, 0x0

    .line 200
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    move v1, v4

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 204
    .local v1, left:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 205
    .local v3, right:I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 207
    .local v0, item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v5, v0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v4

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    check-cast v0, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 214
    .restart local v0       #item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v4, v0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 216
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 219
    :cond_3
    :goto_1
    if-gt v1, v3, :cond_0

    .line 221
    add-int v4, v1, v3

    div-int/lit8 v2, v4, 0x2

    .line 222
    .local v2, middle:I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    check-cast v0, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 224
    .restart local v0       #item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v4, v0, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    .line 225
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 227
    :cond_4
    add-int/lit8 v3, v2, -0x1

    goto :goto_1
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    .local v0, v1:I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    .local v1, v2:I
    sub-int v2, v0, v1

    return v2
.end method

.method public static getInstance()Lcom/broadcom/bt/app/fm/rx/ChannelHolder;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mInstance:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    invoke-direct {v0}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mInstance:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    .line 64
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mInstance:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/broadcom/bt/app/fm/rx/Station;)I
    .locals 5
    .parameter "item"

    .prologue
    .line 109
    const-string v1, "ChannelHolder"

    const-string v2, "ChannelHolder  add station "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    const-string v1, "ChannelHolder"

    const-string v2, "Command name/content mustn\'t be empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v1, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    iget-object v2, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->BinarySearch(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, pos:I
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/app/fm/rx/Station;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    iget-object v2, p1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->delete(I)V

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlSerial:Lcom/broadcom/bt/app/fm/rx/XmlSerial;

    invoke-virtual {v1, p0}, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->flush(Lcom/broadcom/bt/app/fm/rx/ChannelHolder;)V

    goto :goto_0
.end method

.method public delete(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 139
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 141
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->flush()V

    goto :goto_0
.end method

.method public edit(ILcom/broadcom/bt/app/fm/rx/Station;)I
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->delete(I)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->add(Lcom/broadcom/bt/app/fm/rx/Station;)I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mXmlSerial:Lcom/broadcom/bt/app/fm/rx/XmlSerial;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->flush(Lcom/broadcom/bt/app/fm/rx/ChannelHolder;)V

    .line 152
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/broadcom/bt/app/fm/rx/Station;
    .locals 3
    .parameter "index"

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 174
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    .line 178
    :cond_1
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemFreq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/fm/rx/Station;

    goto :goto_0
.end method

.method public getNextFreq()I
    .locals 4

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 266
    .local v1, item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v2, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    if-gt v2, v3, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v2, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 272
    .end local v1           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/app/fm/rx/Station;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public getPrevFreq()I
    .locals 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 281
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 300
    .local v1, item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v2, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    if-lt v2, v3, :cond_0

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v2, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 306
    .end local v1           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/app/fm/rx/Station;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public getStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/app/fm/rx/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    return-object v0
.end method

.method public getWorkFreqName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, workFreq:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 190
    .local v1, item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v3, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, v1, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 194
    .end local v1           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :goto_1
    return-object v3

    .line 186
    .restart local v1       #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v1           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setWorkFreq(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 156
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    .line 157
    return-void
.end method
