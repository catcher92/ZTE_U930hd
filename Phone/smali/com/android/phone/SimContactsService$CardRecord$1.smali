.class Lcom/android/phone/SimContactsService$CardRecord$1;
.super Ljava/lang/Object;
.source "SimContactsService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService$CardRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/phone/SimContactsService$CardRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimContactsService$CardRecord;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContactsService$CardRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/phone/SimContactsService$CardRecord$1;->this$1:Lcom/android/phone/SimContactsService$CardRecord;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/SimContactsService$CardRecord;
    .locals 6
    .parameter "source"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, number:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, anrs:[Ljava/lang/String;
    new-instance v0, Lcom/android/phone/SimContactsService$CardRecord;

    iget-object v1, p0, Lcom/android/phone/SimContactsService$CardRecord$1;->this$1:Lcom/android/phone/SimContactsService$CardRecord;

    iget-object v1, v1, Lcom/android/phone/SimContactsService$CardRecord;->this$0:Lcom/android/phone/SimContactsService;

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/SimContactsService$CardRecord;-><init>(Lcom/android/phone/SimContactsService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContactsService$CardRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/SimContactsService$CardRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/phone/SimContactsService$CardRecord;
    .locals 1
    .parameter "size"

    .prologue
    .line 248
    new-array v0, p1, [Lcom/android/phone/SimContactsService$CardRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContactsService$CardRecord$1;->newArray(I)[Lcom/android/phone/SimContactsService$CardRecord;

    move-result-object v0

    return-object v0
.end method
