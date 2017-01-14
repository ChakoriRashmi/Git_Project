trigger Hello_world on Account (before insert) {
System.debug('HELLO WORLD');
}